# Windows 操作系统

```bat
:: 关闭系统
%USERPROFILE% λ SHUTDOWN /S /T 60

:: 重启系统
%USERPROFILE% λ SHUTDOWN /R /T 60

:: 查看系统信息
%USERPROFILE% λ SYSTEMINFO
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

```bat
:: 文件符号链接
%USERPROFILE% λ MKLINK <Link> <Path>

:: 文件硬链接
%USERPROFILE% λ MKLINK /H <Link> <AbsolutePath>

:: 目录符号链接
%USERPROFILE% λ MKLINK /D <Link> <Path>

:: 目录 Junction 链接
%USERPROFILE% λ MKLINK /J <Link> <AbsolutePath>
```

## 网络
---

### `ipconfig`

[*Microsoft Docs 上的 ipconfig 官方文档*](https://docs.microsoft.com/windows-server/administration/windows-commands/ipconfig)。

### `arp`

[*Microsoft Docs 上的 arp 官网文档*](https://docs.microsoft.com/windows-server/administration/windows-commands/arp)。

## 键盘快捷方式
---

[*Windows Help 上的《Windows 中的键盘快捷方式》*](https://support.microsoft.com/help/12445)。

### 任务栏

|              |                      |              | 按键                                            |
|:------------ |:-------------------- |:------------ |:----------------------------------------------- |
| “开始”       |                      |              | ++win++ 或 ++ctrl+esc++                         |
|              | 账户                 |              |                                                 |
|              |                      | “锁定”       | ++win+l++                                       |
| “快速链接”   |                      |              | ++win+x++                                       |
|              | “任务管理器”         |              | ++ctrl+shift+esc++                              |
|              | “设置”               |              | ++win+i++                                       |
|              |                      | “轻松使用”   | ++win+u++                                       |
|              | “文件资源管理器”     |              | ++win+e++                                       |
|              | “搜索”               |              | ++win+q++ 或 ++win+s++                          |
|              | “运行”               |              | ++win+r++                                       |
| “任务视图”   |                      |              | ++win+tab++                                     |
|              | 新建桌面             |              | ++win+ctrl+d++                                  |
|              | 关闭桌面             |              | ++win+ctrl+f4++                                 |
|              | 切换桌面             |              | ++win+ctrl+left++ 和 ++win+ctrl+right++         |
| “任务栏按钮” |                      |              | ++win+t++                                       |
|              | 新建窗口             |              | ++win+shift+"#"++                               |
|              | 以管理员身份新建窗口 |              | ++win+ctrl+shift+"#"++                          |
|              | 关闭窗口             |              | ++alt+f4++                                      |
|              | 切换窗口             |              | ++alt+tab++ 和 ++alt+shift+tab++ 和 ++win+"#"++ |
|              | “跳转列表”           |              | ++win+alt+"#"++                                 |
| “通知区域”   |                      |              | ++win+b++                                       |
|              | “输入指示”           |              |                                                 |
|              |                      | 开关中文输入 | ++ctrl+spc++                                    |
|              |                      | 切换输入法   | ++ctrl+shift++                                  |
|              |                      | 切换语言     | ++win+spc++                                     |
|              | “日期和时间”         |              | ++win+alt+d++                                   |
|              | “操作中心”           |              | ++win+a++                                       |
|              |                      | “投影”       | ++win+p++                                       |
|              |                      | “连接”       | ++win+k++                                       |
|              |                      | “屏幕截图”   | ++win+shift+s++                                 |
| “速览桌面”   |                      |              | ++win+comma++                                   |
| “显示桌面”   |                      |              | ++win+d++                                       |
|              | 切换焦点区域         |              | ++f6++                                          |

### 此电脑

*   打开快捷菜单：右击标题栏，或 ++alt+spc++

### 常规导航

| 按键                | 操作   | 按键          | 操作   |
|:------------------- |:------ |:------------- |:------ |
| ++alt+r++ 或 ++f5++ | 刷新。 |
| ++alt+left++        | 后退。 | ++alt+right++ | 前进。 |

### 常规编辑

| 按键                       | 操作   | 按键                        | 操作   |
|:-------------------------- |:------ |:--------------------------- |:------ |
| ++ctrl+z++                 | 撤消。 | ++ctrl+y++                  | 恢复。 |
| ++ctrl+a++                 | 全选。 |
| ++ctrl+c++ 或 ++ctrl+ins++ | 复制。 | ++ctrl+v++ 或 ++shift+ins++ | 粘贴。 |
| ++ctrl+x++                 | 剪切。 | ++ctrl+d++ 或 ++del++       | 删除。 |

## 常见问题
---

### 旧游戏卡顿

参见 <http://www.illusion.jp/support/windows10.html>。

### 图标显示异常

重置图标缓存数据库，

*   旧版 Windows 使用 `ie4uinit -ClearIconCache`，
*   Windows 10 使用 `ie4uinit -Show`。

### USB 设备不识别

重启 Plug and Play 服务后重试。

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
| [*Docker*](https://www.docker.com/)                    | `docker`       |
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
[*Bing Wallpaper*]: <https://www.microsoft.com/bing/bing-wallpaper>
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

## 注册码
---

请到官网购买以支持正版。

<!--
  据《中华人民共和国著作权法（2010年2月26日第二次修正版）》第二十二条，
  下述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。

  流下了贫穷的泪水 ( TдT)

  1. 访问十分钟邮箱 https://10minutemail.com/
     以获取一个临时邮箱

  2. 另开标签页，访问 My Digital Life 论坛注册页面 https://forums.mydigitallife.net/register/
     填入必选信息开始注册

  3. 返回十分钟邮箱标签页，此时应当会收到一封邮件
     邮件内有确认账户链接，形如 https://forums.mydigitallife.net/account-confirmation/*
     点击以完成注册

     这里有一个先前注册好的账户，不保证依然有效：
     Name: curious1029
     Email: tcziyrlcnirbltbtmq@awdrt.com
     Password: Jl2VZ5IzKTdCdIozweRA
     Date of Birth: 1980-01-01

  4. 访问 KMSpico 官方话题帖 https://forums.mydigitallife.net/threads/kmspico-official-thread.65739/
     该页面需要登录
     登陆后访问页面并获取下载链接

     这里有一个先前获取的磁力链接，不保证依然有效：
     magnet:?xt=urn:btih:E954AB6B5A93071E8F1A41C509E77F35A50B1B11&dn=KMSpico_v10.2.0

  5. 临时停用 Windows Defender 实时保护

  6. 下载 KMSpico
     运行 KMSpico_v10.2.0/KMSpico Install/KMSpico_setup.exe 并安装到默认位置

  7. 在 Windows Defender 中配置排除项
     %ProgramFiles%\KMSpico\KMSELDI.exe
     %ProgramFiles%\KMSpico\Service_KMS.exe
     %ProgramFiles%\KMSpico\AutoPico.exe
     %WinDir%\SECOH-QAD.exe
     %WinDir%\SECOH-QAD.dll

  8. 恢复启用 Windows Defender 实时保护

  9. 运行 KMSpico

  10. 上述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。
-->
