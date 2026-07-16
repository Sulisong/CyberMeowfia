# Build Guide

## Prerequisites

- **Android NDK r29+** (tested with r30)
- **GNU Make** (Linux/macOS: pre-installed; Windows: via [ezwinports.make](https://github.com/ArcticLampyrid/ezwinports/releases) or MSYS2)
- **PowerShell** (Windows only, for `mkdir`/`sha256` compatibility)

## Setup

Set the `ANDROID_NDK_HOME` environment variable to your NDK installation path:

```bash
# Linux / macOS
export ANDROID_NDK_HOME=$HOME/Android/Sdk/ndk/30.0.14904198

# PowerShell
$env:ANDROID_NDK_HOME = "F:\Android\Sdk\ndk\30.0.14904198"
```

On Windows, ensure GNU Make is in `PATH`:

```powershell
$env:Path += ";C:\Users\<user>\AppData\Local\Microsoft\WinGet\Packages\ezwinports.make_Microsoft.Winget.Source_8wekyb3d8bbwe\bin"
```

## Build

### Using Make (recommended)

```bash
cd IonStack/CVE-2026-43499/exploit
make -f "../Makefile" PROJECT=<target>
```

### Using build.bat (Windows, hardcoded violin target)

```cmd
cd IonStack\CVE-2026-43499\exploit
..\build.bat
```

## Available Targets

List all supported device/firmware combinations:

```bash
cd IonStack/CVE-2026-43499/exploit
make -f "../Makefile" list-projects
```

Current targets:

| Target | Device | Build |
|--------|--------|-------|
| `violin-BP2A.250605.031.A3` | Xiaomi Pad 7S Pro | OS3.0.303.0.WOTCNXM |

Run `make -f "../Makefile" list-projects` in the `exploit/` directory for the full list of supported device/firmware combinations.

## Build Output

```
build/<target>/bin/preload.so    # LD_PRELOAD shared library
build/embed/su_daemon_aarch64_pie  # Embedded su daemon (static PIE)
```

## Usage

```bash
adb push build/<target>/bin/preload.so /data/local/tmp/
adb shell LD_PRELOAD=/data/local/tmp/preload.so /system/bin/cat /dev/null
adb shell LD_PRELOAD=/data/local/tmp/preload.so /system/bin/toybox id
```

## Makefile Targets

| Target | Description |
|--------|-------------|
| `preload` | Build `preload.so` (default) |
| `info` | Print resolved build configuration |
| `list-projects` | List all available PROJECT values |
| `clean` | Remove `build/` directory |
