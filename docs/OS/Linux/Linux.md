# GNU/Linux 操作系统

```fish
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


# 查看发行版信息
user@host ~> lsb_release -a (--all)
# 或者
user@host ~> cat /etc/os-release

# CentOS
user@host ~> cat /etc/redhat-release


# 查看处理器信息
user@host ~> cat /proc/cpuinfo

# 查看内存信息
user@host ~> free --human
# abbr.      free -h

# 查看硬盘信息
user@host ~> lsblk
```

鳥哥的 Linux 私房菜上的[第十九章、開機流程、模組管理與 Loader](http://linux.vbird.org/linux_basic/0510osloader.php)。

1.  开机
2.  加载 BIOS 或 UEFI
    1.  加电自检
    2.  加载 BootDevice -> GPT -> MBR -> 1stStageBootLoader
        *   coreboot
        *   Libreboot
        *   Das U-Boot
    3.  加载 BootPartition -> BootSector -> 2ndStageBootLoader
        *   GRUB (*NIX)
        *   BOOTMGR
        *   NTLDR (Windows)
        *   BootX (macOS)
        *   SYSLINUX (Linux)
    4.  加载 Linux 内核 `/boot/vmlinuz`
    5.  解压、加载并挂载虚拟文件系统 `/boot/initrd` 或 `/boot/initramfs`
3.  Linux 操作系统首次调用 `systemd`
    1.  执行 `initrd.target`
    2.  硬件检测
    3.  加载内核模块 `/lib/modules/$(uname -r)/kernel`，主要为存储设备的驱动程序
    4.  卸载虚拟文件系统
    5.  挂载实体文件系统
    6.  硬件就绪
4.  Linux 操作系统再次调用 `systemd`，进程标识 `1`
    1.  执行 `/etc/systemd/system/default.target`
        *   系统 target `/usr/lib/systemd/system/*.target[.wants]`
        *   用户 target `/etc/systemd/system/*.target[.wants]`
        *   为与 SystemV 兼容，有以下链接
            *   `/usr/lib/systemd/system/runlevel0.target -> poweroff.target`
            *   `/usr/lib/systemd/system/runlevel1.target -> rescue.target`
            *   `/usr/lib/systemd/system/runlevel2.target -> multi-user.target`
            *   `/usr/lib/systemd/system/runlevel3.target -> multi-user.target`
            *   `/usr/lib/systemd/system/runlevel4.target -> multi-user.target`
            *   `/usr/lib/systemd/system/runlevel5.target -> graphical.target`
            *   `/usr/lib/systemd/system/runlevel6.target -> reboot.target`
            *   `systemctl list-dependencies default.target`
    2.  `graphical` -> `multi-user` -> `basic` -> `sysinit` -> `systemd-modules-load`
        1.  依据 `/etc/modules-load.d/*.conf` 加载额外核心模块
        2.  依据 `/etc/modprobe.d/*.conf` 加载额外核心模块参数
    3.  `graphical` -> `multi-user` -> `basic` -> `sysinit` -> `systemd-sysctl`
        1.  依据 `/etc/sysctl.conf` 加载核心参数
        2.  依据 `/etc/sysctl.d/*.conf` 加载额外核心参数
    4.  `graphical` -> `multi-user` -> `basic`
        1.  依据 `/etc/rc.modules` 和 `/etc/sysconfig/modules/*.modules` 加载模块
    5.  `graphical` -> `multi-user`
        1.  为与 System V 兼容，若 `/etc/rc.local` 可读可执行，则执行。<br/>
            若 `/etc/rc.local -> /etc/rc.d/rc.local`，则二者都须可读和可执行。

## 进程和内存
---

### 可执行与可链接格式 ELF

适用于 GNU/Linux 操作系统的应用程序二进制接口规范 ELF（Executable and Linkable Format）。

#### 常用命令组合

```fish
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

[*ldd 官方文档*](http://man7.org/linux/man-pages/man1/ldd.1.html)。

```fish
user@host ~> ldd [option]... <file>...
```

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

## 网络
---

### 数据包过滤框架 netfilter

适用于 Linux 2.4.x 及更高版本内核的数据包过滤框架，官网 <https://netfilter.org/>。

#### 常用命令组合

```fish
user@host ~> systemctl status firewalld  # 查看 FirewallD 服务状态

user@host ~> sudo firewall-cmd --list-all  # 列出所有规则

user@host ~> sudo firewall-cmd --query-port=<port>/<protocol>               # 查询一条规则
user@host ~> sudo firewall-cmd --permanent --add-port=<port>/<protocol>     # 持久添加一条规则
user@host ~> sudo firewall-cmd --permanent --remove-port=<port>/<protocol>  # 持久移除一条规则

user@host ~> sudo firewall-cmd --reload  # 重新加载配置
```

### 查找端口占用

```fish
user@host ~> ss --all --numeric --processes | grep <:port>
# abbr.      ss -anp | grep <:port>
```

## 安全
---
