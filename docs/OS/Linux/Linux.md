# GNU/Linux 操作系统

```{.sh}
# 安全地重启系统
user@host ~> sudo shutdown --reboot now
# abbr.      sudo shutdown -r now

# 安全地关闭系统
user@host ~> sudo shutdown --poweroff now
# abbr.      sudo shutdown -h now

# 硬停机
user@host ~> sudo halt

# 硬掉电
user@host ~> sudo poweroff

# 硬重启
user@host ~> sudo reboot

# 查看系统信息：内核名、网络节点主机名、内核发行号、内核版本、硬件架构名、处理器类型、硬件平台和操作系统名
user@host ~> uname --all
#abbr.       uname -a

# 查看发行版信息
user@host ~> cat /etc/*-release

# 查看硬件信息
user@host ~> sudo lshw [-short]

# 查看处理器信息
user@host ~> lscpu

# 查看块设备信息
user@host ~> lsblk --all
# abbr.      lsblk -a

# 查看外设互连总线信息
user@host ~> lspci [-t|-v|-vv]

# 查看通用串行总线信息
user@host ~> lsusb [--tree|--verbose]
# abbr.      lsusb [-t|-v]
```

## 开机
---

[*《鳥哥的 Linux 私房菜》上的第十九章、開機流程、模組管理與 Loader*](http://linux.vbird.org/linux_basic/0510osloader.php)。

1.  开机
2.  加载 BIOS/UEFI
    1.  从 CMOS 中加载配置
    2.  加电自检（power-on self test）
3.  加载引导设备（boot device）中的 MBR/GTP 中的引导程序（boot loader）
    *   [*coreboot*](https://www.coreboot.org/)
    *   [*Libreboot*](https://libreboot.org/)
    *   [*Das U-Boot*](http://www.denx.de/wiki/U-Boot/)
4.  加载引导分区（boot partition）中的引导扇区（boot sector）中的引导程序（boot loader）
    *   [*GRUB*](https://www.gnu.org/software/grub/) (*NIX)
    *   BOOTMGR (Windows)
    *   NTLDR (Windows)
    *   BootX (macOS)
    *   [*SYSLINUX*](https://wiki.syslinux.org/) (Linux)
5.  加载 Linux 操作系统
    1.  加载 Linux 内核 `/boot/vmlinuz`
    2.  解压、加载并挂载虚拟文件系统 `/boot/initrd` 或 `/boot/initramfs`
    3.  首次调用 `systemd`
    4.  执行 `default.target` -> `initrd.target` -> `...`
    5.  硬件检测
    6.  加载内核模块 `/lib/modules/$(uname --kernel-release)/kernel`，主要为存储设备的驱动程序
    7.  卸载虚拟文件系统
    8.  挂载实体文件系统
    9.  硬件就绪
6.  再次调用 `systemd`，进程标识 `1`
    1.  执行 `/etc/systemd/system/default.target`
        *   系统 target 和 unit `/usr/lib/systemd/system/*.target[.wants]`
        *   用户 target 和 unit `/etc/systemd/system/*.target[.wants]`
        *   `/usr/lib/systemd/system/runlevel0.target` -> `poweroff.target`
        *   `/usr/lib/systemd/system/runlevel1.target` -> `rescue.target`
        *   `/usr/lib/systemd/system/runlevel2.target` -> `multi-user.target`
        *   `/usr/lib/systemd/system/runlevel3.target` -> `multi-user.target`
        *   `/usr/lib/systemd/system/runlevel4.target` -> `multi-user.target`
        *   `/usr/lib/systemd/system/runlevel5.target` -> `graphical.target`
        *   `/usr/lib/systemd/system/runlevel6.target` -> `reboot.target`

一份 `user@hpst *> systemctl list-dependencies default.target` 输出示例：

```text
default.target -> graphical.target
+-- display-manager.service
+-- multi-user.target                   <-- 系统和网络服务
    +-- dbus.service
    +-- rc-local.service                <-- 当 /etc/rc.local -> /etc/rc.d/rc.local 都可执行时，通过该服务执行脚本
    +-- sshd.service                    <-- SSH 服务
    +-- systemd-ask-password-wall.path
    +-- systemd-logind.service
    +-- systemd-networkd.service        <-- 网络管理服务
    +-- systemd-resolved.service        <-- 地址解析服务
    +-- systemd-user-sessions.service
    +-- basic.target                    <-- 准备系统：防火墙和外设驱动
    |   +-- -.mount
    |   +-- tmp.mount
    |   +-- paths.target
    |   +-- slices.target
    |   |   +-- -.slice
    |   |   +-- system.slice
    |   |
    |   +-- sockets.target
    |   |   +-- dbus.socket
    |   |   +-- dm-event.socket
    |   |   +-- systemd-coredump.socket
    |   |   +-- systemd-initctl.socket
    |   |   +-- systemd-journald-audit.socket
    |   |   +-- systemd-journald-dev-log.socket
    |   |   +-- systemd-journald.socket
    |   |   +-- systemd-networkd.socket
    |   |   +-- systemd-udevd-control.socket
    |   |   +-- systemd-udevd-kernel.socket
    |   |   
    |   +-- sysinit.target                              <-- 初始化系统：硬件检测和核心模块
    |   |   +-- dev-hugepages.mount                     <-- 大页内存挂载
    |   |   +-- dev-mqueue.mount                        <-- 消息队列挂载
    |   |   +-- kmod-static-nodes.service
    |   |   +-- ldconfig.service
    |   |   +-- proc-sys-fs-binfmt_misc.automount
    |   |   +-- sys-fs-fuse-connections.mount
    |   |   +-- sys-kernel-config.mount
    |   |   +-- sys-kernel-debug.mount
    |   |   +-- sys-kernel-tracing.mount
    |   |   +-- systemd-ask-password-console.path
    |   |   +-- systemd-binfmt.service
    |   |   +-- systemd-boot-system-token.service
    |   |   +-- systemd-firstboot.service
    |   |   +-- systemd-hwdb-update.service
    |   |   +-- systemd-journal-catalog-update.service
    |   |   +-- systemd-journal-flush.service
    |   |   +-- systemd-journald.service                <-- 日志服务
    |   |   +-- systemd-machine-id-commit.service
    |   |   +-- systemd-modules-load.service  <-- 核心模块加载，依据以下配置文件
    |   |   +-- systemd-random-seed.service       /etc/modules-load.d/*.conf  <-- 随机数生成器
    |   |   +-- systemd-sysctl.service            /run/modules-load.d/*.conf  <-- 内核参数加载，依据以下配置文件
    |   |   +-- systemd-sysusers.service          /usr/lib/modules-load.d/*.conf  /etc/sysctl.d/*.conf
    |   |   +-- systemd-tmpfiles-setup-dev.service                                /run/sysctl.d/*.conf
    |   |   +-- systemd-tmpfiles-setup.service                                    /usr/lib/sysctl.d/*.conf
    |   |   +-- systemd-udev-trigger.service
    |   |   +-- systemd-udevd.service
    |   |   +-- systemd-update-done.service
    |   |   +-- systemd-update-utmp.service
    |   |   +-- cryptsetup.target
    |   |   +-- local-fs.target                         <-- 本机文件系统初始化，依据 /etc/fstab 配置文件
    |   |   |   +-- -.mount
    |   |   |   +-- boot-EFI.mount
    |   |   |   +-- systemd-fsck-root.service
    |   |   |   +-- systemd-remount-fs.service
    |   |   |   +-- tmp.mount
    |   |   |
    |   |   +-- swap.target                             <-- 交换区初始化，依据 /etc/fstab 配置文件
    |   |       +-- dev-disk-by-uuid-xxxxxxxx-xxxx-Mxxx-Nxxx-xxxxxxxxxxxx.swap
    |   |
    |   +-- timers.target
    |       +-- man-db.timer
    |       +-- shadow.timer
    |       +-- systemd-tmpfiles-clean.timer
    |
    +-- getty.target
    |   +-- getty@tty1.service
    |
    +-- remote-fs.target
        +-- var-lib-machines.mount
```

## 进程和内存
---

### 可执行与可链接格式 ELF

适用于 GNU/Linux 操作系统的应用程序二进制接口规范 ELF（Executable and Linkable Format）。

#### 常用命令组合

```fish
user@host ~> ldd <elf-file>  # load dependencies
```

#### `objdump` 常见选项释义

[*objdump 官网*](https://www.gnu.org/software/binutils/)，
[*objdump 官方文档*](https://sourceware.org/binutils/docs/binutils/objdump.html)。

#### `readelf` 常见选项释义

[*readelf 官网*](https://www.gnu.org/software/binutils/)，
[*readelf 官方文档*](https://sourceware.org/binutils/docs/binutils/readelf.html)。

```fish
user@host ~> readelf <option>... <elf-file>...
```

```sh
-a, --all                          # 全部，等同于 -h -l -S -s -r -d -V -A -I
-h, --file-header                  # 文件头
-l, --program-headers, --segments  # 程序头
-S, --section-headers, --sections  # 段表
-s, --syms, --symbols              # 符号段（.symtab）
-r, --relocs                       # 重定位段（如果存在）
-d, --dynamic                      # 动态段（如果存在）
-V, --version-info                 # 版本段（如果存在）
-I, --histogram                    # 直方图

    --dyn-syms                     # 动态符号表
```

#### `ldd` 常见选项释义

适用于 GNU/Linux 操作系统的加载依赖查询工具 ldd（load dependencies），
[*ldd 官方文档*](http://man7.org/linux/man-pages/man1/ldd.1.html)。

```fish
user@host ~> ldd [option]... <file>...
```

#### 配置搜索路径

临时的：
export LD_LIBRARY_PATH=/lib:/usr/lib:/usr/local/lib

持久的：
在 /etc/ld.so.conf.d/ 下新建文件

以管理员权限运行，配置动态链接程序运行时绑定
user@host ~> sudo ldconfig

## 文件和存储
---

### 目录结构说明

```text
/              #                             根目录
+ bin          # binary                      预装程序目录（由系统发行商维护）
+ boot         # boot                        启动相关目录
+ dev          # device                      设备目录
+ etc          # et cetera                   配置目录
+ home/<user>  #                             用户主目录
+ lib          # library                     预装库目录（由系统发行商维护）
+ lost+found
+ media        # media                       媒体设备的临时挂载目录
+ mnt          # mount                       文件设备的临时挂载目录
+ opt          # optional                    选装程序目录
+ proc         # process                     内核映射目录
+ root         #                             系统管理员用户主目录
+ sbin         # system binary               预装系统程序目录（由系统发行商维护）
+ srv          # service                     服务相关目录
+ sys          # system                      设备映射目录
+ tmp          # temporary                   临时文件目录（重启清空）
+ usr
| + bin        # (user) binary               用户程序目录（由包管理器维护）
| + include    # (user) include              用户包含文件目录（由包管理器维护）
| + lib        # (user) library              用户库目录（由包管理器维护）
| + local
| | + bin      # (user local) binary         用户本地程序目录
| | + include  # (user local) include        用户本地包含文件目录
| | + lib      # (user local) library        用户本地库目录
| | + sbin     # (user local) system binary  用户本地系统程序目录
| | + share    # (user local) share          用户本地共享文件目录
| | + src      # (user local) source         用户本地源文件目录
| + sbin       # (user) system binary        用户系统程序目录（由包管理器维护）
| + share      # (user) share                用户共享文件目录（由包管理器维护）
| + src        # (user) source               用户源文件目录（由包管理器维护）
+ var          # variable                    变量目录
  + log        #                             日志目录
  + pid        # process identifier          进程标识符目录
```

### 文件链接

```fish
user@host ~> ln --symbolic <path> <link>  # 符号链接
# abbr.      ln -s <path> <link>

user@host ~> ln <path> <link>             # 硬链接
```
