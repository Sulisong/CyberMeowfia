# 7sPro (Xiaomi Pad 7S Pro) 内核偏移量分析

> 基于 `kallsyms.txt` (oracle-confirmed root) 和 `disasm/` 反汇编
> 分析时间: 2026-07-16

---

## 1. 内存布局

| 项目 | 7sPro | dali (Redmi K80U) | 差异 |
|------|-------|-------------------|------|
| **KIMAGE_TEXT_BASE** | `0xffffffe1a5800000` | `0xffffffc080000000` | **完全不同!** |
| P0_PAGE_OFFSET | `0xffffff8000000000` | `0xffffff8000000000` | 相同 |
| P0_PHYS_OFFSET | `0x80000000` | `0x80000000` | 相同 |

**关键发现**: 7sPro 的内核加载地址与 Pixel 设备完全不同，说明小米修改了 GKI 的物理加载地址。

---

## 2. 符号偏移对比 (从 _text 起算)

### 2.1 完全相同的符号 ✓

| 符号 | 偏移 | 说明 |
|------|------|------|
| `ASHMEM_MISC_FOPS_OFF` | `0x0223b5e8` | ashmem_misc+0x10 (fops 指针槽) |
| `ASHMEM_FOPS_OFF` | `0x012c9df0` | ashmem_fops 结构体 |
| `ANON_PIPE_BUF_OPS_OFF` | `0x0114a288` | anon_pipe_buf_ops |
| `COPY_SPLICE_READ_OFF` | `0x0040d4ac` | copy_splice_read |
| `INIT_TASK_OFF` | `0x020de280` | init_task |
| `ROOT_TASK_GROUP_OFF` | `0x022d4580` | root_task_group |
| `SELINUX_ENFORCING_OFF` | `0x02315f68` | selinux_state |

### 2.2 有偏移的符号 (7sPro 比 dali 小)

| 符号 | 7sPro | dali | 差值 | 说明 |
|------|-------|------|------|------|
| `NOOP_LLSEEK_OFF` | `0x003c0380` | `0x003c0394` | **-0x14** | noop_llseek |
| `CONFIGFS_READ_ITER_OFF` | `0x00488978` | `0x0048898c` | **-0x14** | configfs 读 |
| `CONFIGFS_BIN_WRITE_ITER_OFF` | `0x00488ea4` | `0x00488eb8` | **-0x14** | configfs 写 |
| `ASHMEM_IOCTL_OFF` | `0x00c7a62c` | `0x00c7a64c` | **-0x20** | ashmem_ioctl |
| `ASHMEM_COMPAT_IOCTL_OFF` | `0x00c7ace8` | `0x00c7ad08` | **-0x20** | compat_ashmem_ioctl |
| `ASHMEM_MMAP_OFF` | `0x00c7ad3c` | `0x00c7ad5c` | **-0x20** | ashmem_mmap |
| `ASHMEM_OPEN_OFF` | `0x00c7af5c` | `0x00c7af7c` | **-0x20** | ashmem_open |
| `ASHMEM_RELEASE_OFF` | `0x00c7afe4` | `0x00c7b004` | **-0x20** | ashmem_release |
| `ASHMEM_SHOW_FDINFO_OFF` | `0x00c7b070` | `0x00c7b090` | **-0x20** | ashmem_show_fdinfo |
| `KMALLOC_CACHES_OFF` | `0x0164ef50` | `0x0164ef70` | **-0x20** | kmalloc_caches |
| `SECURITY_HOOK_HEADS_OFF` | `0x0164f410` | `0x0164f430` | **-0x20** | security_hook_heads |
| `SELINUX_BLOB_SIZES_OFF` | `0x0164fb48` | `0x0164fb68` | **-0x20** | selinux_blob_sizes |

### 2.3 分析

偏移差异来自两个区域:
1. **-0x14 区域** (`noop_llseek`, `configfs_*`): 内核代码段有微小差异
2. **-0x20 区域** (ashmem 函数, slab/SELinux 数据): 另一处代码差异

这说明 7sPro 的内核与 dali 的内核**大部分相同**，但在特定区域有小米的定制补丁。

---

## 3. SLIDE 相关符号

| 符号 | 7sPro 地址 | 偏移 |
|------|-----------|------|
| `nfulnl_logger` | `0xffffffe1a78d2270` | `0x020d2270` |
| `loggers` (slot 0/1) | `0xffffffe1a78d21b8` | `0x020d21b8` |
| `sysctl_bootid` | `0xffffffe1a7b36f58` | `0x02336f58` |
| `proc_do_uuid.bootid_spinlock` | `0xffffffe1a7b36f68` | (sysctl_bootid+0x10) |
| `SLIDE_RANDOM_BOOT_ID_DATA` | `0xffffffe1a7b36f70` | `0x02336f70` (sysctl_bootid+0x18) |

---

## 4. Oracle 确认数据 (oracle.txt)

```
status=OK
uid=uid=0(root) gid=0(root) groups=0(root) context=u:r:magisk:s0
boot_id=ed0b4c66-b4d6-442b-a8ba-92f908275ee9
kptr_restrict_before=2
kptr_restrict_during=0
kallsyms__text=ffffffe1a5800000 T _text
kallsyms_init_task=ffffffe1a78de280 D init_task
kallsyms_init_cred=ffffffe1a78f0548 D init_cred
TASK_CRED_OFF=0x820
TASK_REAL_CRED_OFF=0x818
```

**注意**: boot_id 是一次性的，重启后会改变。kptr_restrict 临时解除才获得了这些地址。

---

## 5. disasm 反汇编参考

反汇编文件确认了以下关键函数的布局:

| 文件 | 函数 | 地址 | 大小 |
|------|------|------|------|
| `do_futex.S` | `do_futex` | `0xffffffe1a599fed4` | 0x300 |
| `futex_wait_requeue_pi.S` | `futex_wait_requeue_pi` | `0xffffffe1a59a2890` | 0x800 |
| `rt_mutex_adjust_prio_chain.S` | `rt_mutex_adjust_prio_chain` | (见 disasm) |
| `__arm64_sys_pselect6.S` | `__arm64_sys_pselect6` | `0xffffffe1a5be0a4c` | (见 disasm) |

这些反汇编可用于:
- 验证 futex 竞态窗口
- 分析 rt_mutex 优先级继承链
- 确认 pselect6 的栈帧布局

---

## 6. 与 Pixel 设备的关键差异总结

| 差异项 | 7sPro | Pixel (dali) | 影响 |
|--------|-------|-------------|------|
| KIMAGE_TEXT_BASE | `0xffffffe1a5800000` | `0xffffffc080000000` | 所有内核地址计算 |
| ashmem 函数偏移 | 比 dali 小 0x20 | 基准 | configfs physrw 原语 |
| configfs 函数偏移 | 比 dali 小 0x14 | 基准 | 任意写原语 |
| slab/SELinux 偏移 | 比 dali 小 0x20 | 基准 | 提权路径 |
| task_struct 布局 | 相同 | 相同 | cred 修改无影响 |
| fops 表布局 | 相同 | 相同 | fops 伪造无影响 |
