# 操作系统

## :material-rename-box: 主机命名约定

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
中国武汉光谷应用服务器开发 3 号机

CN WUH G AS - D003
|  |   | |    |
|  |   | |    开发 3 号机
|  |   | |
|  |   | 应用服务器
|  |   |
|  |   借指“光谷”机房
|  |
|  GB/T 2260-2007 标准中的“武汉”代码
|
ISO 3166-1:2013 标准中的“中国”代码
```

参见：

*   [ISO 3166-1:2013](https://www.iso.org/standard/63545.html)
*   [ISO 3166-2:2013](https://www.iso.org/standard/63546.html)
*   [GB/T 2260-2007](http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=C9C488FD717AFDCD52157F41C3302C6D)
*   [Deployment environment - Wikipedia](https://wikipedia.org/wiki/Deployment_environment)
*   [Standardizing Host and Server Naming Conventions | The Official Device42 Blog](https://www.device42.com/blog/2014/02/standardizing-host-and-server-naming-conventions/)

## :material-usb-flash-drive: 运维优盘

### WePE

[WePE] 是 Windows 的轻量版本，主要用于系统维护。[^Windows Preinstallation Environment on Wikipedia]

### 图吧工具箱

[图吧工具箱] 是由 [图拉丁吧] 吧友收集整理的实用工具集合。

## :material-server: 预启动执行环境服务

### Serva

[Serva] 是一款运行于 :material-microsoft-windows: Windows 操作系统的 PXE 服务。

## Awesome

### 壳层

| 发行日     | POSIX                        | Windows                                        | SSH         | 备注                    |
|:---------- |:---------------------------- |:---------------------------------------------- |:----------- |:----------------------- |
| 2019-05-13 |                              | [:material-console: Terminal][Terminal]        |
| 2017-07-17 |                              | [:material-lambda: Cmder][Cmder]               |
| 2014-02-24 |                              | [Clink]                                        |
| 2007-03-09 |                              | [ConEmu]                                       |
| 2006       |                              | [:material-powershell: PowerShell][PowerShell] |             | [PowerShell - SS64.com] |
| 2005-02-13 | [fish]                       |
| 2000       |                              |                                                | [WinSCP]    |
| 1999-01-22 |                              |                                                | [PuTTY]     |
| 1998-06    |                              |                                                | [SecureCRT] |
| 1994-10-31 | [scsh]                       |
| 1990       | [zsh]                        |
| 1989-06-08 | [:material-bash: bash][bash] |                                                |             | [bash - SS64.com]       |
| 1989-05-30 | [ash]                        |
| 1987       |                              | CMD                                            |             | [CMD - SS64.com]        |
| 1983       | [ksh]                        |
| 1983       | [tcsh]                       |
| 1978       | csh                          |
| 1977       | sh                           |

=== ":material-powershell: PowerShell"

    === ":material-microsoft-windows: Windows"

        ``` ps1con title="PowerShell on Windows session"
        PS $env:USERPROFILE>

        PS $env:ALLUSERSPROFILE>
        ```

=== "Fish"

=== ":material-bash: Bash"

    === ":material-ubuntu: Ubuntu"

        ``` console title="Bash on Ubuntu session"
        user@host:~$

        sudoer@host:~$ sudo

        root@host:~#
        ```

    === ":material-centos: CentOS"

        ``` console title="Bash on CentOS session"
        [user@host ~]$

        [sudoer@host ~]$ sudo

        [root@host ~]#
        ```

=== "CMD"

    === ":material-microsoft-windows: Windows"

        ``` doscon title="CMD on Windows session"
        %USERPROFILE%>

        %ALLUSERSPROFILE%>
        ```

另见 [awesome-console-services](https://github.com/chubin/awesome-console-services#URL-Shortener)。

### 环境支持

| 发行日     | 环境支持    | 备注                                     |
|:---------- |:----------- |:---------------------------------------- |
|            | [MSYS2]     | 基于 Windows 的 POSIX 软件分发和构建平台 |
| 2005       | [MinGW-W64] | 基于 Windows 32/64 的 POSIX 编译工具链   |
| 1998-07-01 | [MinGW]     | 基于 Windows 32 的 POSIX 编译工具链      |
| 1995       | [Cygwin]    | 基于 Windows 的 POSIX 兼容层             |
| 1993-07-04 | [Wine]      | 基于 POSIX 的 Windows 兼容层             |

### 操作系统

| 发行日     | 操作系统                                             | 备注                                   |
|:---------- |:---------------------------------------------------- |:-------------------------------------- |
| 2021-06-21 | [Rocky Linux][Rocky Linux]                           | Red Hat 社区版                          |
| 2021-03-30 | [AlmaLinux][AlmaLinux]                               | Red Hat 社区版                          |
| 2015-07-15 | [:material-microsoft-windows:Windows 10][Windows 10] | <https://msdn.itellyou.cn/>            |
| 2013-03-13 | [Kali]                                               |
| 2011-07-10 | [Manjaro]                                            |
| 2009-07-22 | :material-microsoft-windows: Windows 7               |
| 2009-06-23 | [Tails]                                              |
| 2004-10-20 | [:material-ubuntu: Ubuntu][Ubuntu]                   |
| 2004-05-14 | [:material-centos: CentOS][CentOS]                   | Red Hat 滚动版                         |
| 2003-11-06 | [:material-fedora: Fedora][Fedora]                   | Red Hat 试验版，Linus 使用此 GNU/Linux |
| 2002-03-11 | [:material-arch: Arch][Arch]                         |
| 2001-08-24 | :material-microsoft-windows: Windows XP              |
| 2000-07-26 | [:material-gentoo: Gentoo][Gentoo]                   |
| 1998-05-15 | :material-microsoft-windows-classic: Windows 98      |
| 1996-10-01 | [OpenBSD]                                            |
| 1995-08-15 | :material-microsoft-windows-classic: Windows 95      |
| 1995-05-13 | [:material-redhat: RHEL][RHEL]                       | Red Hat 企业版                         |
| 1994-03-07 | [:fontawesome-brands-suse: SUSE][SUSE]               |
| 1993-11-01 | [:material-freebsd: FreeBSD][FreeBSD]                |
| 1993-08-16 | [:material-debian: Debian][Debian]                   |
| 1993-04-19 | [NetBSD]                                             |
| 1991-09-17 | :material-linux: Linux 0.01                          |
| 1985-11-20 | :material-microsoft-windows-classic: Windows 1.0     |

### 虚拟机

| 发行日     | 虚拟机       | 备注 |
|:---------- |:------------ |:---- |
| 2007-02-05 | [KVM]        |
| 2007-01-15 | [VirtualBox] |
| 1999       | [VMware]     |

### \#

[010 Editor](https://sweetscape.com/010editor/)
:   一款二进制文件编辑器。

[7-Zip](https://www.7-zip.org/)
:   一款压缩工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install 7zip
    ```

### A

[AutoHotkey](https://www.autohotkey.com/)
:   一款自动化脚本语言。
    ``` ps1con
    PS $env:USERPROFILE> scoop install autohotkey
    ```

### B

[bettercap](https://bettercap.org/)
:   一款网络嗅探工具。

[Beyond Compare](https://scootersoftware.com/)
:   一款文件比较工具。

[Bing Wallpaper](https://www.microsoft.com/bing/bing-wallpaper)
:   一款壁纸应用。

### C

[cFosSpeed](https://cfos.de/)
:   一款网络优化工具。

[Cheat Engine](https://cheatengine.org/)
:   一款程序修改工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install cheat-engine
    ```

[CMake](https://cmake.org/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install cmake
    ```

[Conan](https://conan.io/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install conan
    ```

[CPU-Z](https://www.cpuid.com/softwares/cpu-z.html)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install cpu-z
    ```

### D

[DebugView](https://docs.microsoft.com/sysinternals/downloads/debugview)
:   一款调试输出显示工具。

[Debugview++](https://github.com/CobaltFusion/DebugViewPP)
:   一款调试输出显示工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install debugviewpp
    ```

[Dependency Walker](http://dependencywalker.com/)
:   一款 PE 依赖扫描工具，参见 [Dependency-Walker - aldeid](https://www.aldeid.com/wiki/Dependency-Walker)。
    ``` ps1con
    PS $env:USERPROFILE> scoop install depends
    ```


[Docker](https://www.docker.com/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install docker
    ```

[Doxygen](https://doxygen.nl/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install doxygen
    ```

[dSniff](https://monkey.org/~dugsong/dsniff/)
:   一款网络嗅探工具。

### E

[EasyPHP](https://easyphp.org/)
:   一款轻量 Web 服务器。

[Emacs](https://www.gnu.org/software/emacs/)
:   一款文本编辑器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install emacs
    ```

[Ettercap](https://www.ettercap-project.org)
:   一款网络嗅探工具。

[Everything](https://www.voidtools.com/)
:   一款适用于 Windows 操作系统的桌面搜索引擎。
    ``` ps1con
    PS $env:USERPROFILE> scoop install everything
    ```

[Exeinfo PE](http://exeinfo.xn.pl/)
:   一款 PE 查壳工具，参见 [Exeinfo-PE - aldeid](https://www.aldeid.com/wiki/Exeinfo-PE)。

[Explorer Suite](https://ntcore.com/?page_id=388)
:   一款 PE 编辑套件，[Explorer-Suite - aldeid](https://www.aldeid.com/wiki/Explorer-Suite)。

### F

[FastCopy](https://fastcopy.jp/)
:   一款快速复制工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install fastcopy
    ```

[foobar2000](https://www.foobar2000.org/)
:   一款音乐播放器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install foobar2000
    ```

### G

[GPU-Z](https://www.techpowerup.com/download/techpowerup-gpu-z/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install gpu-z
    ```

[Graphviz](https://graphviz.org/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install graphviz

    PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('GRAPHVIZ_DOT', (Join-Path $env:SCOOP 'shims\dot.exe'), [System.EnvironmentVariableTarget]::User)
    ```

### I

[IDA](https://hex-rays.com/products/ida/)
:   一款反汇编调试器。

[IDM](https://www.internetdownloadmanager.com/)
:   一款中心网络下载器。

[iPerf](https://iperf.fr/)
:   一款网速测试工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install iperf3
    ```

[Iris](https://iristech.co/)
:   一款屏幕光调节工具，以缓解眼部疲劳。

### L

LoadPE
:   一款 PE32 修复工具，参见 [LordPE - aldeid](https://www.aldeid.com/wiki/LordPE)。

### M

[MPC-BE](https://mpc-be.org/)
:   一款视频播放器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install mpc-be
    ```

[MPC-HC](https://mpc-hc.org/)
:   一款视频播放器。

[MPC-HC-Fork](https://github.com/clsid2/mpc-hc)
:   一款视频播放器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install mpc-hc-fork
    ```

### N

[NSSM](https://nssm.cc/)
:   一款服务维护工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install nssm
    ```

### O

[OllyDbg](http://ollydbg.de/)
:   一款反汇编调试器。

### P

[PC Hunter](http://xuetr.com/)
:   一款杀毒辅助工具。

PEiD
:   一款 PE32 查壳工具，参见 [PEiD - aldeid](https://www.aldeid.com/wiki/PEiD)

[PCI-Z](https://www.pci-z.com/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install pci-z
    ```

[PlantUML](https://plantuml.com/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install plantuml

    PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('PLANTUML', (Join-Path $env:SCOOP 'shims\plantuml.cmd'), [System.EnvironmentVariableTarget]::User)
    ```

[Postman](https://postman.com/)
:   一款 HTTP API 测试工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install postman
    ```

[PotPlayer](https://potplayer.daum.net/)
:   一款视频播放器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install potplayer
    ```

### Q

[qBittorrent](https://qbittorrent.org/)
:   一款对等网络下载器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install qbittorrent
    ```

[qBittorrent-Enhanced-Edition](https://github.com/c0re100/qBittorrent-Enhanced-Edition)
:   一款对等网络下载器。

### R

[radare](https://radare.org/)
:   一款反汇编调试器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install radare2
    ```

[Rapid Environment Editor](https://rapidee.com/)
:   一款环境变量编辑器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install rapidee
    ```

[Resource Hacker](http://angusj.com/resourcehacker/)
:   一款 PE 资源编辑工具，参见 [ResourceHacker - aldeid](https://www.aldeid.com/wiki/ResourceHacker)。

### S

[SSD-Z](http://aezay.dk/aezay/ssdz/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install ssd-z
    ```

[Sourcetree](https://www.sourcetreeapp.com/)
:   一款 Git 图形用户接口。
    ``` ps1con
    PS $env:USERPROFILE> scoop install sourcetree
    ```

[SWIG](http://swig.org/)
:   略。
    ``` ps1con
    PS $env:USERPROFILE> scoop install swig
    ```

### T

[Transmission](https://transmissionbt.com/)
:   一款对等网络下载器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install transmission
    ```

### V

[Vim](https://www.vim.org/)
:   一款文本编辑器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install vim
    ```

[Visual Studio Code](https://code.visualstudio.com/)
:   一款文本编辑器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install vscode
    ```

[VLC media player](https://www.videolan.org/vlc/)
:   一款视频播放器。
    ``` ps1con
    PS $env:USERPROFILE> scoop install vlc
    ```

### W

[WinDbg](http://windbg.org/)
:   一款调试器。

[WinHex](http://winhex.com/winhex/)
:   一款二进制文件编辑器。

[Wireshark](https://wireshark.org/)
:   一款流量分析工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install wireshark
    ```

[WiX](https://wixtoolset.org/)
:   一款安装包制作工具。
    ``` ps1con
    PS $env:USERPROFILE> scoop install wixtoolset
    ```

### X

[Xlight](https://xlightftpd.com/)
:   一款轻量 FTP 服务器。

<!----------------------------------------------------------------------------->

[^Windows Preinstallation Environment on Wikipedia]: [Windows Preinstallation Environment - Wikipedia](https://wikipedia.org/wiki/Windows_Preinstallation_Environment)

[bash - SS64.com]:       https://ss64.com/bash/
[CMD - SS64.com]:        https://ss64.com/nt/
[PowerShell - SS64.com]: https://ss64.com/ps/

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
