# 7sPro SLIDE Waiter 栈映射分析

> 基于 7sPro 反汇编和实际调试，2026-07-16

## 核心发现

`pselect6` 调用链：`__arm64_sys_pselect6(0x90) → core_sys_select(0x1f0) → do_select(0x3c0)`

`do_select` 和 `core_sys_select` 的 callee-saved 寄存器保存在 `futex_wait_requeue_pi` 的栈帧上，**覆盖了 waiter 结构体字段**。

## Waiter 字段实际映射

| waiter 偏移 | 字段 | 被什么覆盖 | 来源 |
|-------------|------|-----------|------|
| +0x00 | rb_parent_color | do_select 保存的 x20 | fd_set 基地址 |
| +0x08 | rb_right | do_select 保存的 x19 | nfds (320) |
| +0x10 | rb_left | ? | ? |
| +0x18 | prio | core_sys_select sp+0x08 | SP_EL0 (用户栈指针) |
| +0x20 | deadline | ? | ? |
| +0x40 | pi_prio | ? | ? |
| +0x50 | task | core_sys_select sp+0x40 | writefds 指针 |
| +0x58 | lock | core_sys_select sp+0x48 | readfds 指针 |
| +0x60 | wake_state | ? | ? |
| +0x68 | ww_ctx | ? | ? |
| +0x80+ | (超出 waiter) | core_sys_select sp+0x80+ | fd_set 数据 |

## 关键栈帧

```
futex_wait_requeue_pi:  0x1c0  (waiter 在 sp+0x00 ~ sp+0x7f)
__arm64_sys_pselect6:   0x90
core_sys_select:        0x1f0  (寄存器保存覆盖 waiter)
do_select:              0x3c0
```

## 开发陷阱

1. **rt_mutex_setprio brk 检查**: pi_blocked_on 非空时触发，但只在特定分支
2. **dup2 覆盖 fd 0-2**: stdout 丢失，跳过 fd 0-2
3. **consumer 时序**: 必须在 pselect 阻塞期间 fire
4. **punch_consume_go**: 等 consumer fire 后再重置

## SLIDE 策略

需要控制 writefds/readfds 指针来设置 waiter.task/waiter.lock，
而不是直接写 waiter 字段（被寄存器覆盖）。
fd_set 数据在 waiter 之后 (sp+0x80+)，通过 fd_set 内容间接控制。
