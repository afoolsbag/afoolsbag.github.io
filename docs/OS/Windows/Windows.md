# Windows 操作系统

```cmd
:: 关闭系统
%USERPROFILE%> SHUTDOWN /S /T 60

:: 重启系统
%USERPROFILE%> SHUTDOWN /R /T 60
```

## 进程和内存
---

### 可移植可执行格式 PE

适用于 Windows 操作系统的应用程序二进制接口规范 PE（Portable Executable）。

## 文件和存储
---

### 文件链接

官方文档 <https://docs.microsoft.com/windows-server/administration/windows-commands/mklink>。

SS64 上对于 `MKLINK` 命令的说明 <https://ss64.com/nt/mklink.html>。

Stack Overflow 上关于多种链接的讨论 <https://stackoverflow.com/questions/9042542>。

```cmd
:: 文件符号链接
%USERPROFILE%> MKLINK <Link> <Path>

:: 文件硬链接
%USERPROFILE%> MKLINK /H <Link> <AbsolutePath>

:: 目录符号链接
%USERPROFILE%> MKLINK /D <Link> <Path>

:: 目录 Junction 链接
%USERPROFILE%> MKLINK /J <Link> <AbsolutePath>
```

## 网络
---

### `ipconfig`

官方文档 <https://docs.microsoft.com/windows-server/administration/windows-commands/ipconfig>。

### `arp`

官网文档 <https://docs.microsoft.com/windows-server/administration/windows-commands/arp>。

## 安全
---

## Awesome
---

[*010 Editor*](https://sweetscape.com/010editor/)，一款二进制文件编辑器

[*7-Zip*](https://www.7-zip.org/)

```ps1
PS $env:USERPROFILE> scoop install 7zip
```

[*AutoHotkey*](https://www.autohotkey.com/)，一款自动化脚本语言

```ps1
PS $env:USERPROFILE> scoop install autohotkey
```

[*bettercap*](https://bettercap.org/)，一款网络嗅探工具

[*Beyond Compare*](https://scootersoftware.com/)，一款文件比较工具

[*Bing Wallparer*](https://www.microsoft.com/en-us/bing/bing-wallpaper)，必应每日壁纸

[*cFosSpeed*](https://cfos.de/)，一款网络优化工具

[*Cheat Engine*](https://cheatengine.org/)，一款程序修改工具

```ps1
PS $env:USERPROFILE> scoop install cheat-engine
```

[*CMake*](https://cmake.org/)

```ps1
PS $env:USERPROFILE> scoop install cmake
```

[*CPU-Z*](https://www.cpuid.com/softwares/cpu-z.html)

```ps1
PS $env:USERPROFILE> scoop install cpu-z
```

[*DebugView*](https://docs.microsoft.com/sysinternals/downloads/debugview) <sub>
    [*Debugview++*](https://github.com/CobaltFusion/DebugViewPP) </sub>，
一款调试输出显示工具

```ps1
PS $env:USERPROFILE> scoop install debugviewpp
```

[*Dependency Walker*](http://dependencywalker.com/) <sub>
      [*aldeid*](https://www.aldeid.com/wiki/Dependency-Walker) </sub>，
一款 PE 依赖扫描工具

```ps1
PS $env:USERPROFILE> scoop install depends
```

[*Doxygen*](https://doxygen.nl/)

```ps1
PS $env:USERPROFILE> scoop install doxygen
```

[*dSniff*](https://monkey.org/~dugsong/dsniff/)，一款网络嗅探工具

[*EasyPHP*](https://easyphp.org/)，一款轻量 Web 服务器

[*Emacs*](https://www.gnu.org/software/emacs/)，一款文本编辑器

```ps1
PS $env:USERPROFILE> scoop install emacs
```

[*Ettercap*](https://www.ettercap-project.org)，一款网络嗅探工具

[*Exeinfo PE*](http://exeinfo.xn.pl/) <sub>
    [*aldeid*](https://www.aldeid.com/wiki/Exeinfo-PE) </sub>，
一款 PE 查壳工具

[*Explorer Suite*](https://ntcore.com/?page_id=388)（CFF Explorer、PE Detective、Task Explorer） <sub>
    [*aldeid*](https://www.aldeid.com/wiki/Explorer-Suite) </sub>，
一款 PE 编辑套件

[*FastCopy*](https://fastcopy.jp/)，一款快速复制工具

```ps1
PS $env:USERPROFILE> scoop install fastcopy
```

[*foobar2000*](https://www.foobar2000.org/)，一款音乐播放器

```ps1
PS $env:USERPROFILE> scoop install foobar2000
```

[*GPU-Z*](https://www.techpowerup.com/download/techpowerup-gpu-z/)

```ps1
PS $env:USERPROFILE> scoop install gpu-z
```

[*Graphviz*](https://graphviz.org/)

```ps1
PS $env:USERPROFILE> scoop install graphviz
PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('GRAPHVIZ_DOT', (Join-Path $env:SCOOP 'shims\dot.exe'), 'User')
```

[*IDA*](https://hex-rays.com/products/ida/)，一款反汇编调试器

[*IDM*](https://www.internetdownloadmanager.com/)，一款中心网络下载器

[*iPerf*](https://iperf.fr/)，一款网速测试工具

```ps1
PS $env:USERPROFILE> scoop install iperf3
```

[*Iris*](https://iristech.co/)，一款屏幕光调节工具，以缓解眼部疲劳

LoadPE <sub>
    [*aldeid*](https://www.aldeid.com/wiki/LordPE) </sub>，
一款 PE32 修复工具

[*MPC-BE*](https://mpc-be.org/)

```ps1
PS $env:USERPROFILE> scoop install mpc-be
```

[*MPC-HC*](https://mpc-hc.org/) <sub>
    [*MPC-HC-Fork*](https://github.com/clsid2/mpc-hc) </sub>，

```ps1
PS $env:USERPROFILE> scoop install mpc-hc-fork
```

[*NSSM*](https://nssm.cc/)，一款服务维护工具

```ps1
PS $env:USERPROFILE> scoop install nssm
```

[*OllyDbg*](http://ollydbg.de/)，一款反汇编调试器

[*PC Hunter*](http://xuetr.com/)，一款杀毒辅助工具

PEiD <sub>
    [*aldeid*](https://www.aldeid.com/wiki/PEiD) </sub>，
一款 PE32 查壳工具

[*PCI-Z*](https://www.pci-z.com/)

```ps1
PS $env:USERPROFILE> scoop install pci-z
```

[*PlantUML*](https://plantuml.com/)

```ps1
PS $env:USERPROFILE> scoop install plantuml
PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('PLANTUML', (Join-Path $env:SCOOP 'shims\plantuml.cmd'), 'User')
```

[*Postman*](https://postman.com/)，一款 HTTP API 测试工具

```ps1
PS $env:USERPROFILE> scoop install postman
```

[*PotPlayer*](https://potplayer.daum.net/)

```ps1
PS $env:USERPROFILE> scoop install potplayer
```

[*qBittorrent*](https://qbittorrent.org/) <sub>
    [*qBittorrent-Enhanced-Edition*](https://github.com/c0re100/qBittorrent-Enhanced-Edition) </sub>，
一款对等网络下载器

```ps1
PS $env:USERPROFILE> scoop install qbittorrent
```

[*radare*](https://radare.org/)，一款反汇编调试器

```ps1
PS $env:USERPROFILE> scoop install radare2
```

[*Rapid Environment Editor*](https://rapidee.com/)，一款环境变量编辑器

```ps1
PS $env:USERPROFILE> scoop install rapidee
```

[*Resource Hacker*](http://angusj.com/resourcehacker/) <sub>
    [*aldeid*](https://www.aldeid.com/wiki/ResourceHacker) </sub>，
一款 PE 资源编辑工具

[*SSD-Z*](http://aezay.dk/aezay/ssdz/)

```ps1
PS $env:USERPROFILE> scoop install ssd-z
```

[*Transmission*](https://transmissionbt.com/)，一款对等网络下载器

```ps1
PS $env:USERPROFILE> scoop install transmission
```

[*Vim*](https://www.vim.org/)，一款文本编辑器

```ps1
PS $env:USERPROFILE> scoop install vim
```

[*Visual Studio Code*](https://code.visualstudio.com/)，一款文本编辑器

```ps1
PS $env:USERPROFILE> scoop install vscode
```

[*VLC media player*](https://www.videolan.org/vlc/)

```ps1
PS $env:USERPROFILE> scoop install vlc
```

[*WinDbg*](http://windbg.org/)，一款调试器

[*WinHex*](http://winhex.com/winhex/)，一款二进制文件编辑器

[*Wireshark*](https://wireshark.org/)，一款流量分析工具

```ps1
PS $env:USERPROFILE> scoop install wireshark
```

[*WiX*](https://wixtoolset.org/)，一款安装包制作工具

```ps1
PS $env:USERPROFILE> scoop install wixtoolset
```
[*Xlight*](https://xlightftpd.com/)，一款轻量 FTP 服务器
