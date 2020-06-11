# Windows 操作系统

```cmd
:: 关闭系统
%USERPROFILE%> SHUTDOWN /S /T 60

:: 重启系统
%USERPROFILE%> SHUTDOWN /R /T 60

:: 查看系统信息
%USERPROFILE%> SYSTEMINFO
```

## 进程和内存
---

### 可移植可执行格式 PE

适用于 Windows 操作系统的应用程序二进制接口规范 PE（Portable Executable）。

## 文件和存储
---

### 文件链接

[*Microsoft Docs 上的 mklink 官方文档*](https://docs.microsoft.com/windows-server/administration/windows-commands/mklink)，
[*SS64 上的 MKLink 文档*](https://ss64.com/nt/mklink.html)，
[*Stack Overflow 上关于多种链接的讨论*](https://stackoverflow.com/questions/9042542)。

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

[*Microsoft Docs 上的 ipconfig 官方文档*](https://docs.microsoft.com/windows-server/administration/windows-commands/ipconfig)。

### `arp`

[*Microsoft Docs 上的 arp 官网文档*](https://docs.microsoft.com/windows-server/administration/windows-commands/arp)。

## Awesome
---

Scoop 安装应用的命令：

```ps1
PS $env:USERPROFILE> scoop install <app>
```

Chocolatey 安装包的命令：

```ps1
PS $env:ALLUSERSPROFILE> cinst <pkg> [--dir="$env:ProgramFiles"]
```

| Program                                                | scoop app      | Note |
|:------------------------------------------------------ |:-------------- |:---- |
| [*010 Editor*]                                         |                | 一款二进制文件编辑器
| [*7-Zip*](https://www.7-zip.org/)                      | `7zip`         |
| [*AutoHotkey*](https://www.autohotkey.com/)            | `autohotkey`   | 一款自动化脚本语言
| [*bettercap*](https://bettercap.org/)                  |                | 一款网络嗅探工具
| [*Conan*](https://conan.io/)                           | `conan`        |
| [*Beyond Compare*](https://scootersoftware.com/)       |                | 一款文件比较工具
| [*Bing Wallpaper*]                                     |                | 一款壁纸应用
| [*cFosSpeed*](https://cfos.de/)                        |                | 一款网络优化工具
| [*Cheat Engine*](https://cheatengine.org/)             | `cheat-engine` | 一款程序修改工具
| [*CMake*](https://cmake.org/)                          | `cmake`        | 
| [*CPU-Z*]                                              | `cpu-z`        |
| [*DebugView*]                                          |                | 一款调试输出显示工具
| [*Debugview++*]                                        | `debugviewpp`  | 一款调试输出显示工具
| [*Dependency Walker*](http://dependencywalker.com/)    | `depends`      | 一款 PE 依赖扫描工具，[*on aldeid*](https://www.aldeid.com/wiki/Dependency-Walker)
| [*Doxygen*](https://doxygen.nl/)                       | `doxygen`      |
| [*dSniff*]                                             |                | 一款网络嗅探工具
| [*EasyPHP*](https://easyphp.org/)                      |                | 一款轻量 Web 服务器
| [*Emacs*]                                              | `emacs`        | 一款文本编辑器
| [*Ettercap*](https://www.ettercap-project.org)         |                | 一款网络嗅探工具
| [*Exeinfo PE*](http://exeinfo.xn.pl/)                  |                | 一款 PE 查壳工具，[*on aldeid*](https://www.aldeid.com/wiki/Exeinfo-PE)
| [*Explorer Suite*]                                     |                | 一款 PE 编辑套件，[*on aldeid*](https://www.aldeid.com/wiki/Explorer-Suite)
| [*FastCopy*](https://fastcopy.jp/)                     | `fastcopy`     | 一款快速复制工具
| [*foobar2000*](https://www.foobar2000.org/)            | `foobar2000`   | 一款音乐播放器
| [*GPU-Z*]                                              | `gpu-z`        |
| [*Graphviz*](https://graphviz.org/)                    | `graphviz` *1  |
| [*IDA*]                                                |                | 一款反汇编调试器
| [*IDM*](https://www.internetdownloadmanager.com/)      |                | 一款中心网络下载器
| [*iPerf*](https://iperf.fr/)                           | `iperf3`       | 一款网速测试工具
| [*Iris*](https://iristech.co/)                         |                | 一款屏幕光调节工具，以缓解眼部疲劳
| LoadPE                                                 |                | 一款 PE32 修复工具，[*on aldeid*](https://www.aldeid.com/wiki/LordPE)
| [*MPC-BE*](https://mpc-be.org/)                        | `mpc-be`       |
| [*MPC-HC*](https://mpc-hc.org/)                        |                |
| [*MPC-HC-Fork*]                                        | `mpc-hc-fork`  |
| [*NSSM*](https://nssm.cc/)                             | `nssm`         | 一款服务维护工具
| [*OllyDbg*](http://ollydbg.de/)                        |                | 一款反汇编调试器
| [*PC Hunter*](http://xuetr.com/)                       |                | 一款杀毒辅助工具
| PEiD                                                   |                | 一款 PE32 查壳工具，[*on aldeid*](https://www.aldeid.com/wiki/PEiD)
| [*PCI-Z*](https://www.pci-z.com/)                      | `pci-z`        |
| [*PlantUML*](https://plantuml.com/)                    | `plantuml` *2  |
| [*Postman*](https://postman.com/)                      | `postman`      | 一款 HTTP API 测试工具
| [*PotPlayer*](https://potplayer.daum.net/)             | `potplayer`    |
| [*qBittorrent*](https://qbittorrent.org/)              | `qbittorrent`  | 一款对等网络下载器
| [*qBittorrent-Enhanced-Edition*]                       |                | 一款对等网络下载器
| [*radare*](https://radare.org/)                        | `radare2`      | 一款反汇编调试器
| [*Rapid Environment Editor*](https://rapidee.com/)     | `rapidee`      | 一款环境变量编辑器
| [*Resource Hacker*]                                    |                | 一款 PE 资源编辑工具，[*on aldeid*](https://www.aldeid.com/wiki/ResourceHacker)
| [*SSD-Z*]                                              | `ssd-z`        |
| [*Sourcetree*](https://www.sourcetreeapp.com/)         | `sourcetree`   | 一款 Git 图形用户接口
| [*SWIG*](http://swig.org/)                             | `swig`         |
| [*Transmission*](https://transmissionbt.com/)          | `transmission` | 一款对等网络下载器
| [*Vim*](https://www.vim.org/)                          | `vim`          | 一款文本编辑器
| [*Visual Studio Code*](https://code.visualstudio.com/) | `vscode`       | 一款文本编辑器
| [*VLC media player*](https://www.videolan.org/vlc/)    | `vlc`          |
| [*WinDbg*](http://windbg.org/)                         |                | 一款调试器
| [*WinHex*](http://winhex.com/winhex/)                  |                | 一款二进制文件编辑器
| [*Wireshark*](https://wireshark.org/)                  | `wireshark`    | 一款流量分析工具
| [*WiX*](https://wixtoolset.org/)                       | `wixtoolset`   | 一款安装包制作工具
| [*Xlight*](https://xlightftpd.com/)                    |                | 一款轻量 FTP 服务器

[*010 Editor*]: <https://sweetscape.com/010editor/>
[*Bing Wallpaper*]: <https://www.microsoft.com/en-us/bing/bing-wallpaper>
[*CPU-Z*]: <https://www.cpuid.com/softwares/cpu-z.html>
[*DebugView*]: <https://docs.microsoft.com/sysinternals/downloads/debugview>
[*Debugview++*]: <https://github.com/CobaltFusion/DebugViewPP>
[*dSniff*]: <https://monkey.org/~dugsong/dsniff/>
[*Emacs*]: <https://www.gnu.org/software/emacs/>
[*Explorer Suite*]: <https://ntcore.com/?page_id=388> "CFF Explorer, PE Detective & Task Explorer"
[*GPU-Z*]: <https://www.techpowerup.com/download/techpowerup-gpu-z/>
[*IDA*]: <https://hex-rays.com/products/ida/>
[*MPC-HC-Fork*]: <https://github.com/clsid2/mpc-hc>
[*qBittorrent-Enhanced-Edition*]: <https://github.com/c0re100/qBittorrent-Enhanced-Edition>
[*Resource Hacker*]: <http://angusj.com/resourcehacker/>
[*SSD-Z*]: <http://aezay.dk/aezay/ssdz/>

*1：
```ps1
PS $env:USERPROFILE> scoop install graphviz
PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('GRAPHVIZ_DOT', (Join-Path $env:SCOOP 'shims\dot.exe'), [System.EnvironmentVariableTarget]::User)
```

*2
```ps1
PS $env:USERPROFILE> scoop install plantuml
PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('PLANTUML', (Join-Path $env:SCOOP 'shims\plantuml.cmd'), [System.EnvironmentVariableTarget]::User)
```