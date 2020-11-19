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

``` txt
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

### 虚拟机

| Virtual machine                                                | Date       | Note |
|:-------------------------------------------------------------- |:---------- |:---- |
| [VMware](https://www.vmware.com/products/workstation-pro.html) | 1999       |
| [VirtualBox](https://www.virtualbox.org/)                      | 2007-01-15 |
| [KVM](https://www.linux-kvm.org/)                              | 2007-02-05 | Kernel Virtual Machine

### 操作系统

| Operation system                       | Date       | Note |
|:-------------------------------------- |:---------- |:---- |
| Windows 1.0                            | 1985-11-20 |
| Linux 0.01                             | 1991-09-17 |
| [NetBSD](https://netbsd.org/)          | 1993-04-19 |
| [Debian](https://www.debian.org/)      | 1993-08-16 |
| [FreeBSD](https://www.freebsd.org/)    | 1993-11-01 |
| [SUSE](https://www.opensuse.org/)      | 1994-03-07 |
| [RHEL](https://www.redhat.com/)        | 1995-05-13 | Red Hat 企业版
| Windows 95                             | 1995-08-15 |
| [OpenBSD](https://www.openbsd.org/)    | 1996-10-01 |
| Windows 98                             | 1998-05-15 |
| [Gentoo](https://gentoo.org/)          | 2000-07-26 |
| Windows XP                             | 2001-08-24 |
| [Arch](https://www.archlinux.org/)     | 2002-03-11 |
| [Fedora](https://getfedora.org/)       | 2003-11-06 | Red Hat 试验版, Linus 使用此 GNU/Linux
| [CentOS](https://centos.org/)          | 2004-05-14 | Red Hat 社区版
| [Ubuntu](https://ubuntu.com/)          | 2004-10-20 |
| [Tails](https://tails.boum.org/)       | 2009-06-23 |
| Windows 7                              | 2009-07-22 |
| [Manjaro](https://manjaro.org/)        | 2011-07-10 |
| [Kali](https://www.kali.org/)          | 2013-03-13 |
| [Windows 10](https://www.windows.com/) | 2015-07-15 |

### 环境支持

| Environment support                                     | Date       | Note |
|:------------------------------------------------------- |:---------- |:---- |
| [Wine](https://www.winehq.org/)                         | 1993-07-04 | 基于 POSIX 的 Windows 兼容层
| [Cygwin](https://cygwin.com/ "Cygnus Windows")          | 1995       | 基于 Windows 的 POSIX 兼容层
| [MinGW](http://mingw.org/ "Minimalist GNU for Windows") | 1998-07-01 | 基于 Windows 32 的 POSIX 编译工具链
| [MinGW-W64](http://mingw-w64.org/)                      | 2005       | 基于 Windows 32/64 的 POSIX 编译工具链
| [MSYS2](https://www.msys2.org/ "Minimal System")        |            | 基于 Windows 的 POSIX 软件分发和构建平台

### 壳层

| Shell                                                        | Date       | Note |
|:------------------------------------------------------------ |:---------- |:---- |
| POSIX                                                        | -          | -
| sh                                                           | 1977       | Bourne Shell
| csh                                                          | 1978       | C Shell
| [tcsh](https://www.tcsh.org/)                                | 1983       | TENEX C Shell
| [ksh](http://kornshell.com/)                                 | 1983       | Korn Shell
| [ash](https://www.in-ulm.de/~mascheck/various/ash/)          | 1989-05-30 | Almquist Shell
| [bash](https://www.gnu.org/software/bash/)                   | 1989-06-08 | Bourne-Again Shell，[bash docs on SS64](https://ss64.com/bash/)
| [zsh](http://www.zsh.org/)                                   | 1990       | Z Shell
| [scsh](https://scsh.net/)                                    | 1994-10-31 | Scheme Shell
| [fish](https://fishshell.com/)                               | 2005-02-13 | Friendly Interactive Shell
| Windows                                                      | -          | -
| CMD                                                          | 1987       | Command Prompt，[CMD docs on SS64](https://ss64.com/nt/)
| [PowerShell](https://microsoft.com/powershell/)              | 2006       | [PowerShell docs on SS64](https://ss64.com/ps/)
| [ConEmu](https://conemu.github.io/)                          | 2007-03-09 | Console Emulator
| [Clink](https://mridgers.github.io/clink/)                   | 2014-02-24 |
| [Cmder](https://cmder.net/)                                  | 2017-07-17 | Console Emulator
| [Terminal](https://github.com/microsoft/terminal)            | 2019-05-13 |
| Secure Shell                                                 | -          | -
| [SecureCRT](https://vandyke.com/products/securecrt/)         | 1998-06    |
| [PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/) | 1999-01-22 |
| [WinSCP](https://winscp.net/)                                | 2000       |
