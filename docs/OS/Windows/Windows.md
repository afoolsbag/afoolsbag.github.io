# Windows

[Microsoft]\ [Windows] 是一系列操作系统的统称。[^Windows on Wikipedia]

## PE

可移植可执行格式（PE）是适用于 Windows 操作系统的应用程序二进制接口规范。

## 键盘快捷方式

参见 [Windows 的键盘快捷方式](https://support.microsoft.com/help/12445)。

### 任务栏

|              |                      |              | 按键                                               |
|:------------ |:-------------------- |:------------ |:-------------------------------------------------- |
| “开始”       |                      |              | ++win++<br>++ctrl+esc++                            |
|              | 账户                 |              |                                                    |
|              |                      | “锁定”       | ++win+l++                                          |
| “快速链接”   |                      |              | ++win+x++                                          |
|              | “任务管理器”         |              | ++ctrl+shift+esc++                                 |
|              | “设置”               |              | ++win+i++                                          |
|              |                      | “轻松使用”   | ++win+u++                                          |
|              | “文件资源管理器”     |              | ++win+e++                                          |
|              | “搜索”               |              | ++win+q++<br>++win+s++                             |
|              | “运行”               |              | ++win+r++                                          |
| “任务视图”   |                      |              | ++win+tab++                                        |
|              | 新建桌面             |              | ++win+ctrl+d++                                     |
|              | 关闭桌面             |              | ++win+ctrl+f4++                                    |
|              | 切换桌面             |              | ++win+ctrl+left++<br>++win+ctrl+right++            |
| “任务栏按钮” |                      |              | ++win+t++                                          |
|              | 新建窗口             |              | ++win+shift+"数字"++                               |
|              | 以管理员身份新建窗口 |              | ++win+ctrl+shift+"数字"++                          |
|              | 关闭窗口             |              | ++alt+f4++                                         |
|              | 切换窗口             |              | ++alt+tab++<br>++alt+shift+tab++<br>++win+"数字"++ |
|              | “跳转列表”           |              | ++win+alt+"数字"++                                 |
| “通知区域”   |                      |              | ++win+b++                                          |
|              | “输入指示”           |              |                                                    |
|              |                      | 开关中文输入 | ++ctrl+spc++                                       |
|              |                      | 切换输入法   | ++ctrl+shift++                                     |
|              |                      | 切换语言     | ++win+spc++                                        |
|              | “日期和时间”         |              | ++win+alt+d++                                      |
|              | “操作中心”           |              | ++win+a++                                          |
|              |                      | “投影”       | ++win+p++                                          |
|              |                      | “连接”       | ++win+k++                                          |
|              |                      | “屏幕截图”   | ++win+shift+s++                                    |
| “速览桌面”   |                      |              | ++win+comma++                                      |
| “显示桌面”   |                      |              | ++win+d++                                          |
|              | 切换焦点区域         |              | ++f6++                                             |

### 此电脑

*   打开快捷菜单：右击标题栏，或 ++alt+spc++

### 常规导航

| 按键                | 操作   | 按键          | 操作   |
|:------------------- |:------ |:------------- |:------ |
| ++alt+r++<br>++f5++ | 刷新。 |
| ++alt+left++        | 后退。 | ++alt+right++ | 前进。 |

### 常规编辑

| 按键                       | 操作   | 按键                        | 操作   |
|:-------------------------- |:------ |:--------------------------- |:------ |
| ++ctrl+z++                 | 撤消。 | ++ctrl+y++                  | 恢复。 |
| ++ctrl+a++                 | 全选。 |
| ++ctrl+c++<br>++ctrl+ins++ | 复制。 | ++ctrl+v++<br>++shift+ins++ | 粘贴。 |
| ++ctrl+x++                 | 剪切。 | ++ctrl+d++<br>++del++       | 删除。 |

## 常用命令

### 系统

#### 查看系统信息

``` doscon
%USERPROFILE%> SYSTEMINFO
```

#### 重启系统

``` doscon
%USERPROFILE%> SHUTDOWN /R /T 60
```

#### 关闭系统

``` doscon
%USERPROFILE%> SHUTDOWN /S /T 60
```

### 链接

参见：

*   [windows - What is the difference between NTFS Junction Points and Symbolic Links? - Stack Overflow](https://stackoverflow.com/questions/9042542)
*   [MKLink - Windows CMD - SS64.com](https://ss64.com/nt/mklink.html)
*   [mklink | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/mklink)

#### 建立文件符号链接

``` doscon
%USERPROFILE%> MKLINK <Link> <Path>
```

#### 建立文件硬链接

``` doscon
%USERPROFILE%> MKLINK /H <Link> <AbsolutePath>
```

#### 建立目录符号链接

``` doscon
%USERPROFILE%> MKLINK /D <Link> <Path>
```

#### 建立目录联接

``` doscon
%USERPROFILE%> MKLINK /J <Link> <AbsolutePath>
```

### 网络

参见：

*   [ipconfig | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/ipconfig)。
*   [arp | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/arp)。


## 常见问题

### 旧游戏卡顿

参见 [Windows １０動作確認表](http://www.illusion.jp/support/windows10.html)。

### 图标显示异常

重置图标缓存数据库，旧版 Windows 使用

``` doscon
%USERPROFILE%> ie4uinit -ClearIconCache
```

Windows 10 使用

``` doscon
%USERPROFILE%> ie4uinit -Show
```

### USB 设备不识别

重启 Plug and Play 服务后重试。

## Awesome

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

## 注册码

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

<!----------------------------------------------------------------------------->

[^Windows on Wikipedia]: [Microsoft Windows - Wikipedia](https://wikipedia.org/wiki/Microsoft_Windows)

[Microsoft]: https://www.microsoft.com/
[Windows]:   https://www.microsoft.com/windows/

*[PE]: Portable Executable
