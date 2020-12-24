# 操作系统

## 主机命名约定

``` ebnf
(* 主机名 *)
host name = country code , location code , unique site code , device role , '-' , service level , serial number ;

(* 国家或地区代码 *)
country code     = ? ISO 3166-1:2013 ? ;
(* 国家或地区的主要子行政区代码 *)
location code    = ? ISO 3166-2:2013 ? | ? GB/T 2260-2007 ? ;
(* 唯一地点代码 *)
unique site code = ? customize code ? ;
(* 设备角色 *)
device role      = "AS" |  (* Application Server 应用服务器 *)
                   "CS" |  (* Computing Server 计算服务器 *)
                   "DB" |  (* DataBase server 数据库服务器 *)
                   "DC" |  (* Domain Controller 域控制器 *)
                   "MQ" |  (* Message Queue server 消息队列服务器 *)
                   "RT" |  (* RouTer 路由器 *)
                   "SW" |  (* SWitch 交换机 *)
                   "WS" |  (* Web Server 网页服务器 *)
                   ? more ? ;
(* 服务级别 *)
service level    = 'D' | (* Development 开发 *)
                   'T' | (* Testing 测试 *)
                   'S' | (* Staging 预演 *)
                   'P' ; (* Production 生产 *)
(* 序列号 *)
serial number    = ? number ? ;
```

例如：

``` text
CNWUHGAS-D003
|/|_/||/ |__/
| |  ||  开发 3 号机
| |  ||
| |  |应用服务器
| |  |
| |  借指光谷机房
| |
| GB/T 2260-2007 标准中的武汉代码
|
ISO 3166-1:2013 标准中的中国代码
```

参见：

*   [ISO 3166-1:2013](https://www.iso.org/standard/63545.html)
*   [ISO 3166-2:2013](https://www.iso.org/standard/63546.html)
*   [GB/T 2260-2007](http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=C9C488FD717AFDCD52157F41C3302C6D)
*   [Deployment environment - Wikipedia](https://wikipedia.org/wiki/Deployment_environment)
*   [Standardizing Host and Server Naming Conventions | The Official Device42 Blog](https://www.device42.com/blog/2014/02/standardizing-host-and-server-naming-conventions/)

## Awesome

### 壳层

| 发行日     | POSIX  | Windows      | SSH         | 备注                    |
| :--------- | :----- | :----------- | :---------- | :---------------------- |
| 2019-05-13 |        | [Terminal]   |
| 2017-07-17 |        | [Cmder]      |
| 2014-02-24 |        | [Clink]      |
| 2007-03-09 |        | [ConEmu]     |
| 2006       |        | [PowerShell] |             | [PowerShell - SS64.com] |
| 2005-02-13 | [fish] |
| 2000       |        |              | [WinSCP]    |
| 1999-01-22 |        |              | [PuTTY]     |
| 1998-06    |        |              | [SecureCRT] |
| 1994-10-31 | [scsh] |
| 1990       | [zsh]  |
| 1989-06-08 | [bash] |              |             | [bash - SS64.com]       |
| 1989-05-30 | [ash]  |
| 1987       |        | CMD          |             | [CMD - SS64.com]        |
| 1983       | [ksh]  |
| 1983       | [tcsh] |
| 1978       | csh    |
| 1977       | sh     |

另见 [awesome-console-services](https://github.com/chubin/awesome-console-services#URL-Shortener)。

### 环境支持

| 发行日     | 环境支持    | 备注                                     |
| :--------- | :---------- | :--------------------------------------- |
|            | [MSYS2]     | 基于 Windows 的 POSIX 软件分发和构建平台 |
| 2005       | [MinGW-W64] | 基于 Windows 32/64 的 POSIX 编译工具链   |
| 1998-07-01 | [MinGW]     | 基于 Windows 32 的 POSIX 编译工具链      |
| 1995       | [Cygwin]    | 基于 Windows 的 POSIX 兼容层             |
| 1993-07-04 | [Wine]      | 基于 POSIX 的 Windows 兼容层             |

### 操作系统

| 发行日     | 操作系统     | 备注                                   |
| :--------- | :----------- | :------------------------------------- |
| 2015-07-15 | [Windows 10] |
| 2013-03-13 | [Kali]       |
| 2011-07-10 | [Manjaro]    |
| 2009-07-22 | Windows 7    |
| 2009-06-23 | [Tails]      |
| 2004-10-20 | [Ubuntu]     |
| 2004-05-14 | [CentOS]     | Red Hat 社区版                         |
| 2003-11-06 | [Fedora]     | Red Hat 试验版，Linus 使用此 GNU/Linux |
| 2002-03-11 | [Arch]       |
| 2001-08-24 | Windows XP   |
| 2000-07-26 | [Gentoo]     |
| 1998-05-15 | Windows 98   |
| 1996-10-01 | [OpenBSD]    |
| 1995-08-15 | Windows 95   |
| 1995-05-13 | [RHEL]       | Red Hat 企业版                         |
| 1994-03-07 | [SUSE]       |
| 1993-11-01 | [FreeBSD]    |
| 1993-08-16 | [Debian]     |
| 1993-04-19 | [NetBSD]     |
| 1991-09-17 | Linux 0.01   |
| 1985-11-20 | Windows 1.0  |

### 虚拟机

| 发行日     | 虚拟机       | 备注 |
| :--------- | :----------- | :--- |
| 2007-02-05 | [KVM]        |
| 2007-01-15 | [VirtualBox] |
| 1999       | [VMware]     |

<!----------------------------------------------------------------------------->

[Arch]:                  https://www.archlinux.org/
[ash]:                   https://www.in-ulm.de/~mascheck/various/ash/ "Almquist Shell"
[bash]:                  https://www.gnu.org/software/bash/ "Bourne-Again Shell"
[bash - SS64.com]:       https://ss64.com/bash/
[CentOS]:                https://centos.org/ "Community Enterprise Operating System"
[Clink]:                 https://mridgers.github.io/clink/
[CMD - SS64.com]:        https://ss64.com/nt/
[Cmder]:                 https://cmder.net/ "Console Emulator"
[ConEmu]:                https://conemu.github.io/ "Console Emulator"
[Cygwin]:                https://cygwin.com/ "Cygnus Windows"
[Debian]:                https://www.debian.org/
[Fedora]:                https://getfedora.org/
[fish]:                  https://fishshell.com/ "Friendly Interactive Shell"
[FreeBSD]:               https://www.freebsd.org/ "Free Berkeley Software Distribution"
[Gentoo]:                https://gentoo.org/
[Kali]:                  https://www.kali.org/
[ksh]:                   http://kornshell.com/ "Korn Shell"
[KVM]:                   https://www.linux-kvm.org/ "Kernel Virtual Machine"
[Manjaro]:               https://manjaro.org/
[MinGW]:                 http://mingw.org/ "Minimalist GNU for Windows"
[MinGW-W64]:             http://mingw-w64.org/
[MSYS2]:                 https://www.msys2.org/ "Minimal System"
[NetBSD]:                https://netbsd.org/ "Net Berkeley Software Distribution"
[OpenBSD]:               https://www.openbsd.org/ "Open Berkeley Software Distribution"
[PowerShell]:            https://microsoft.com/powershell/
[PowerShell - SS64.com]: https://ss64.com/ps/
[PuTTY]:                 https://www.chiark.greenend.org.uk/~sgtatham/putty/
[RHEL]:                  https://www.redhat.com/ "Red Hat Enterprise Linux"
[scsh]:                  https://scsh.net/ "Scheme Shell"
[SecureCRT]:             https://vandyke.com/products/securecrt/
[SUSE]:                  https://www.opensuse.org/ "Software- und System-Entwicklung"
[tcsh]:                  https://www.tcsh.org/ "TENEX C Shell"
[Tails]:                 https://tails.boum.org/
[Terminal]:              https://github.com/microsoft/terminal
[Ubuntu]:                https://ubuntu.com/
[VirtualBox]:            https://www.virtualbox.org/
[VMware]:                https://www.vmware.com/products/workstation-pro.html
[Wine]:                  https://www.winehq.org/
[Windows 10]:            https://www.windows.com/
[WinSCP]:                https://winscp.net/
[zsh]:                   http://www.zsh.org/ "Z Shell"

*[CMD]: Command Prompt
*[csh]: C Shell
*[sh]:  Bourne Shell
*[SSH]: Secure Shell
