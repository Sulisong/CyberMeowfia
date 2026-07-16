# CyberMeowfia 项目分析报告

> 生成时间: 2026-07-16
> 仓库: https://github.com/Sulisong/CyberMeowfia.git
> 许可证: Apache License 2.0

---

## 1. 项目概览

**CyberMeowfia** 是由 **Nebula Security (nebusec.ai)** 发布的安全研究仓库，包含多个针对 **Linux 内核** 和 **Chrome V8 / Firefox SpiderMonkey** 的漏洞利用 PoC（Proof of Concept）代码。项目名称源自其针对 Android (Pixel) 设备的利用链，结合了"赛博"（Cyber）与"黑手党"（Mafia）的隐喻。

### 研究团队

- 网站: https://nebusec.ai
- Twitter: @nebusecurity
- 已公开漏洞: 885+

---

## 2. 目录结构

```
CyberMeowfia/
├── README.MD                    # 项目主文档
├── LICENSE                      # Apache 2.0
├── ANALYSIS.md                  # 本分析文件
├── 7sPro/                       # 内核符号与 Oracle 数据（Redmi K80U / 7sPro 设备）
│   ├── boot.img                 # 设备 boot 镜像
│   ├── current-oracle.raw       # 内核符号 Oracle 原始数据
│   ├── kallsyms.txt             # 内核符号表
│   ├── key-symbols.txt          # 关键内核符号地址
│   ├── oracle.txt               # Oracle 运行结果（root 状态确认）
│   ├── oracle.err               # Oracle 错误日志
│   ├── SHA256SUMS               # 文件校验
│   └── disasm/                  # 关键内核函数反汇编
│       ├── __arm64_sys_futex.S
│       ├── do_futex.S
│       ├── futex_wait_requeue_pi.S
│       ├── rt_mutex_adjust_prio_chain.S
│       ├── rt_mutex_setprio.S
│       ├── task_blocks_on_rt_mutex.S
│       ├── __arm64_sys_pselect6.S
│       ├── __sched_setscheduler.S
│       ├── core_sys_select.S
│       └── do_select.S
│
├── IonStack/                    # 核心研究: IonStack 漏洞利用链
│   ├── Readme.md                # 免责声明
│   ├── CVE-2026-43499/          # Linux 内核 futex UAF 漏洞 (GhostLock)
│   │   ├── poc/
│   │   │   └── poc.c            # DoS PoC（纯崩溃验证）
│   │   └── exploit/
│   │       ├── Makefile          # Android NDK 交叉编译
│   │       ├── assets/
│   │       │   └── wallpaper.webp
│   │       └── src/
│   │           ├── main.c        # 漏洞利用主逻辑
│   │           ├── common.h      # 全局定义与结构体
│   │           ├── offset.h      # 目标设备偏移量（运行时注入）
│   │           ├── fops.c        # 文件操作表伪造
│   │           ├── pipe.c        # pipe buffer 物理读写原语
│   │           ├── slide.c       # KASLR 绕过
│   │           ├── root.c        # 提权逻辑
│   │           ├── preload.c     # LD_PRELOAD 加载器
│   │           ├── su_blob.S     # su 守护进程嵌入
│   │           ├── wallpaper_blob.S  # 壁纸资源嵌入
│   │           ├── util.c        # 工具函数
│   │           ├── kernelsnitch/ # 内核信息泄漏工具库
│   │           │   ├── kernelsnitch.h
│   │           │   ├── futex_hash.h
│   │           │   ├── timeutils.h
│   │           │   └── utils.h
│   │           └── targets/      # 多设备适配（14 个目标）
│   │               ├── blazer-*/     # Pixel 10 系列
│   │               ├── caiman-*/     # Pixel 10 Pro
│   │               ├── comet-*/      # Pixel 10 变体
│   │               ├── dali-*/       # Pixel 9a
│   │               ├── frankel-*/    # Pixel 10 变体
│   │               ├── komodo-*/     # Pixel 10 变体
│   │               ├── mustang-*/    # Pixel 10 变体
│   │               ├── rango-*/      # Pixel 10 变体
│   │               ├── stallion-*/   # Pixel 10 变体
│   │               ├── tegu-*/       # Pixel 10 变体
│   │               └── tokay-*/      # Pixel 10 变体
│   │
│   └── CVE-2026-10702/          # Firefox SpiderMonkey JIT 漏洞
│       ├── index.html            # 入口页面
│       ├── exploit.html          # 浏览器端利用代码
│       └── ansi.js               # ANSI 相关工具
│
└── security-research/           # 其他安全研究
    ├── Chrome-CVE-2026-5865/    # Chrome V8 Maglev 写屏障缺失
    │   └── getshell.js           # V8 漏洞利用 → RCE
    ├── Linux-CVE-2026-23274/    # Linux 内核 Netfilter 漏洞
    │   ├── exploit.c             # 内核 ROP 利用
    │   └── Makefile
    └── Linux-CVE-2026-43501/    # Linux 内核 "Route of Root" 漏洞
        ├── exploit.c             # 内核利用（xdk 框架）
        └── Makefile
```

---

## 3. 漏洞详情

### 3.1 CVE-2026-43499 — IonStack / GhostLock (Linux 内核)

| 属性 | 详情 |
|------|------|
| **类型** | Stack UAF (Use-After-Free) |
| **位置** | Linux 内核 futex 子系统 (`FUTEX_WAIT_REQUEUE_PI` / `FUTEX_CMP_REQUEUE_PI`) |
| **影响** | 所有 Linux 发行版，存在 **15 年** |
| **平台** | Android (ARM64)，针对 Google Pixel 全系列 |
| **利用效果** | 任意内核读写 → root + SELinux 关闭 + su 安装 |

**技术要点:**

1. **漏洞根因**: `futex_wait_requeue_pi` 与 `futex_cmp_requeue_pi` 的竞态条件导致 PI (Priority Inheritance) futex 的 waiter 结构体在栈上被释放后仍被引用
2. **利用链**:
   - 通过 `pselect6` / `sched_setattr` 等系统调用控制内核栈内容
   - 伪造 `rt_mutex_waiter` 结构体链，劫持 RB 树遍历
   - 通过 `configfs` 的 `bin_write_iter` 实现内核任意地址写
   - 利用 `pipe_buffer` 实现物理内存读写原语
   - 遍历 `task_struct` 链表找到当前进程，修改 `cred` 结构体提权
3. **KASLR 绕过**: 通过读取 `fops` 表中的函数指针，与已知偏移比对计算内核基址
4. **设备适配**: 为 14 个 Pixel 设备/固件组合提供了精确的内核偏移量
5. **附加功能**: 提权后自动安装 `su` 守护进程并更换壁纸

**PoC (poc.c)** 使用 8 个子进程、每轮 300 次迭代，通过多种"stamp"原语（prctl、socket、pselect、TCP、process_vm、keyctl、fd、futex）触发栈 UAF 的可观测崩溃。

### 3.2 CVE-2026-10702 — IonStack Fullchain 的浏览器端

| 属性 | 详情 |
|------|------|
| **类型** | JIT 编译器类型混淆 |
| **位置** | Firefox SpiderMonkey JavaScript 引擎 |
| **利用效果** | 浏览器沙箱逃逸 → 与 CVE-2026-43499 联动实现完整 RCE |

**技术要点:**

- 通过 `leakTypedWord` / `leakCarrierWord` 利用 JIT 优化缺陷泄漏堆地址
- 伪造 TypedArray 对象实现任意地址读写 (AAR/AAW)
- 利用 WASM 函数对象的 unchecked entry point 劫持控制流
- 调用 `mprotect` 将 shellcode 缓冲区设为 RWX 后执行
- 最终下载并 `LD_PRELOAD` 内核 exploit payload

### 3.3 CVE-2026-5865 — Chrome V8 Maglev 写屏障缺失

| 属性 | 详情 |
|------|------|
| **类型** | Maglev 编译器缺少写屏障 → GC 后 UAF |
| **位置** | Chrome V8 引擎 Maglev JIT |
| **利用效果** | 渲染器 RCE |

**技术要点:**

- 利用 `MaglevGraphBuilder` 中 `StoreMap` 操作缺少写屏障的缺陷
- 通过 GC 触发后对象图不一致，获得类型混淆
- 构造 fake JSArray 实现任意地址读写
- 通过 WASM Instance 的 `jump_table_start` 劫持执行流

### 3.4 CVE-2026-23274 — Linux 内核 Netfilter

| 属性 | 详情 |
|------|------|
| **类型** | Netfilter xt_IDLETIMER 模块漏洞 |
| **位置** | Linux 内核 Netfilter 子系统 |
| **利用效果** | 内核 RCE → kernelCTF $10,500 赏金 |

**技术要点:**

- 利用 timer 回调函数指针劫持
- 三阶段栈迁移 (stack pivot): 控制 rdi → 控制 rdx → 控制 rsp
- 完整 ROP chain: `commit_creds(prepare_kernel_cred(NULL))` 提权
- 使用 `xdk` 框架自动化 ROP 构造

### 3.5 CVE-2026-43501 — Route of Root (Linux 内核)

| 属性 | 详情 |
|------|------|
| **类型** | 内核提权漏洞 |
| **位置** | Linux 内核 |
| **利用效果** | 完整 root 提权 |

**技术要点:**

- 使用 `xdk` 框架和 `postrip` 模块
- 通过 Netlink socket 和 IPv6 路由操纵触发
- `core_pattern` 注入实现代码执行
- 支持 `pidfd` 系列系统调用进行进程操作

---

## 4. 7sPro 子目录分析

`7sPro/` 目录包含针对 **Redmi K80U (7sPro)** 设备的内核分析数据：

- **oracle.txt** 显示已成功获取 root 权限 (`uid=0(root)`)
- 设备运行 Android 17 (API 级别对应 CP2A 固件)
- 内核基址: `0xffffffe1a5800000`
- 关键符号已通过 `/proc/kallsyms` 泄漏（kptr_restrict 临时解除）
- 包含 futex 相关函数的完整反汇编，用于漏洞根因分析

---

## 5. 目标设备矩阵

### CVE-2026-43499 支持的设备 (14 个目标):

| 设备代号 | 固件版本 | 类型 |
|----------|----------|------|
| blazer | CP1A.260305.018 ~ CP2A.260605.012.C1 | Pixel 10 |
| caiman | CP2A.260605.012 / .C1 | Pixel 10 Pro |
| comet | CP2A.260605.012 / .C1 | Pixel 10 变体 |
| dali | BP2A.250605.031.A3 | Pixel 9a |
| frankel | CP1A.260305.018 ~ CP2A.260605.012.C1 | Pixel 10 变体 |
| komodo | CP2A.260605.012 / .C1 | Pixel 10 变体 |
| mustang | CP1A.260305.018 ~ CP2A.260605.012.C1 | Pixel 10 变体 |
| rango | CP1A.260305.018 ~ CP2A.260605.012.C1 | Pixel 10 变体 |
| stallion | CP1A.260305.018 ~ CP2A.260605.012.C1 | Pixel 10 变体 |
| tegu | CP2A.260605.012 | Pixel 10 变体 |
| tokay | CP2A.260605.012 / .C1 | Pixel 10 变体 |

### CVE-2026-10702 支持的设备:

| 设备 ID | 说明 |
|---------|------|
| google/frankel/frankel:17/CP2A.260605.012 | Firefox on Pixel 10 |

---

## 6. 技术亮点

### 6.1 内核利用技术栈

| 技术 | 用途 |
|------|------|
| **futex PI 竞态** | 触发栈 UAF |
| **pselect6 fd_set 操控** | 控制内核栈内容 |
| **sched_setattr** | 精确调度线程优先级 |
| **pipe_buffer 伪造** | 物理内存读写原语 |
| **configfs bin_write_iter** | 任意内核地址写 |
| **slab cache 精排** | 堆风水 (heap feng shui) |
| **KASLR 绕过** | fops 函数指针泄漏 |
| **task_struct 遍历** | 找到当前进程 cred |
| **SELinux 绕过** | 修改 cred security blob |

### 6.2 浏览器利用技术栈

| 技术 | 用途 |
|------|------|
| **JIT 类型混淆** | 堆地址泄漏 |
| **fake TypedArray** | 任意读写原语 |
| **WASM entry 劫持** | 控制流劫持 |
| **mprotect RWX** | shellcode 执行 |
| **ARM64 shellcode** | 命令执行 + 输出捕获 |

### 6.3 编译与部署

- 使用 **Android NDK r29** 交叉编译 (aarch64-linux-android)
- 输出为 **shared object (.so)**，通过 `LD_PRELOAD` 注入
- 支持通过 Makefile 的 `PROJECT` 参数选择目标设备
- 嵌入 `su` 守护进程和壁纸资源作为独立 blob

---

## 7. 关键代码路径

### 漏洞触发流程 (CVE-2026-43499)

```
run_exploit()
  ├── slide_leak_kernel_base()       # KASLR 绕过
  ├── prepare_good_kernel_page()     # 堆风水 + fops 表伪造
  └── run_main_route_threads()       # 三线程协作触发漏洞
       ├── waiter_thread()           # FUTEX_WAIT_REQUEUE_PI → 栈上 waiter
       ├── owner_thread()            # FUTEX_LOCK_PI → 持锁
       ├── consumer_thread()         # sched_setattr → 竞态窗口
       └── do_pselect_fake_lock_route()  # pselect6 控制栈内容
            └── try_cfi_stage()      # configfs 任意写 → pipe 物理读写
                 └── install_android_root()  # 提权 + SELinux + su
```

### 浏览器利用流程 (CVE-2026-10702)

```
main()
  ├── leakTypedWord()               # 泄漏 TypedArray shape/slots 地址
  ├── leakCarrierWord()             # 泄漏 carrier 对象地址
  ├── warmForge()                   # JIT 预热伪造对象
  ├── forgedWriteByte() / forgedReadByte()  # 任意读写验证
  ├── addrof(real) + read64()       # 完整 AAR/AAW
  ├── 泄漏 Array.isArray → libxul.so 基址
  ├── WASM entry → mprotect(RWX)
  └── shellcode → 命令执行
```

---

## 8. 总结

CyberMeowfia 是一个**高质量的攻击性安全研究项目**，展示了：

1. **跨层攻击链**: 从浏览器 JIT 沙箱到内核 root 的完整利用链
2. **深度内核理解**: 对 futex PI、slab 分配器、pipe 子系统的精通
3. **工程化程度高**: 14+ 设备适配、自动化编译、嵌入式 payload
4. **历史级漏洞**: GhostLock (CVE-2026-43499) 被描述为影响所有 Linux 发行版长达 15 年的栈 UAF

此仓库对于安全研究人员理解现代内核利用技术和浏览器沙箱逃逸具有重要参考价值。

---

*本分析仅供安全研究学习用途。所有漏洞利用代码应在合法授权的隔离环境中使用。*
