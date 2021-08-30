# Windows

[:material-microsoft: Microsoft][Microsoft]\ [:material-microsoft-windows: Windows][Windows] 是一系列操作系统的统称。[^Windows on Wikipedia]

## 背景知识

???+ tldr "PE"

    可移植可执行格式（PE）是适用于 Windows 操作系统的应用程序二进制接口规范。

## 运行 :material-microsoft-windows: Windows

??? tldr "通过 :material-server: PXE 安装 :material-microsoft-windows: Windows 10"

    0.  确保维护机和目标机处于同一网络；

    1.  在维护机上，[下载 Serva 社区版](https://www.vercot.com/~serva/download.html)，并解压到应用程序目录（假定为 `C:\Serva\Program`），解压后的目录结构形如：

        ``` text
        C:\Serva\Program\
                        Serva.chm
                        Serva32.exe
                        Serva64.exe
                        ServaEULA.pdf
        ```

    0.  准备一处空白文件夹作为工作目录（假定为 `C:\Serva\Workspace`），目录结构形如：

        ``` text
        C:\Serva\Workspace\
        ```

    0.  第一次运行 Serva 程序，进行配置：

        1.  运行 `Serva64.exe` 或 `Serva32.exe`；
        
        0.  将自动弹出 `Serva Community v...` 对话框，等待并点选 `I'm a "Community" user` 按钮；
        
        0.  将自动弹出 `About/License Serva Commuity v...` 对话框，点选 `OK` 按钮；
        
        0.  单机标题栏图标、或右击标题栏、或右击系统托盘图标，选择 `Settings` 选单，或者直接双击标题栏图标打开 `Serva Community Settings` 对话框；

        0.  切换到 `TFTP` 选项卡，勾选 `TFTP Server` 选项框，在 `TFTP Server root directory` 中填入工作目录；

        0.  切换到 `DHCP` 选项卡，勾选 `DHCP Server` 和 `BINL` 选项框，填写 `IP Pool 1st addr`、`Pool size` 和 `Subnet Mask` 配置；

        0.  保存并退出程序。

    0.  第二次运行 Serva 程序，程序将自动加载配置并初始化工作目录，然后直接退出程序。初始化后的目录结构形如：

        ``` text
        C:\Serva\Workspace\
                        BM\
                        NWA_PXE\
                        WIA_RIS\
                        WIA_WDS\
                                ServaReadme.txt
                        astamp.dat
                        ServaEULA.pdf
        ```

    0.  对生成的 `WIA_WDS` 文件夹进行高级共享，共享名为 `WIA_WDS_SHARE`；在其下新建 `W10_64` 文件夹；

    0.  [下载 Windows 10 镜像](https://msdn.itellyou.cn/)，将其加载到（虚拟）光驱，并将其中内容复制到 `W10_64` 文件夹中，目录结构形如：

        ``` text
        C:\Serva\Workspace\
                        BM\
                        NWA_PXE\
                        WIA_RIS\
                        WIA_WDS\
                                W10_64\
                                        boot\
                                        efi\
                                        sources\
                                        support\
                                        autorun.inf
                                        bootmgr
                                        bootmgr.efi
                                        setup.exe
                                ServaReadme.txt
                        astamp.dat
                        ServaEULA.pdf
        ```

    0.  第三次运行 Serva 程序，提供 PXE 服务；

        !!! attention "注意"

            服务将自动地在 `W10_64` 文件夹中生成 `$OEM$` 和 `_SERVA_` 文件夹，此二文件夹是不支持移动的，若移动则应手动删除并重新生成。

        !!! attention "注意"
        
            社区版 Serva 有 50 分钟运行时间的限制，警惕服务可能在安装途中中断。

    0.  在目标机上，变更 BIOS 的启动选项，选择从 PXE 引导、安装。

    参见 [使用 Serva 通过网络 PXE 方式安装 Windows10/CentOS - liqipeng - 博客园](https://www.cnblogs.com/liqipeng/p/6158922.html)。

## :material-keyboard: 键盘快捷方式

??? tldr ":material-microsoft-windows: 任务栏"

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

??? tldr ":material-laptop: 此电脑"

    *   打开快捷菜单：右击标题栏，或 ++alt+spc++

??? tldr ":material-navigation: 常规导航"

    | 按键                | 操作   | 按键          | 操作   |
    |:------------------- |:------ |:------------- |:------ |
    | ++alt+r++<br>++f5++ | 刷新。 |
    | ++alt+left++        | 后退。 | ++alt+right++ | 前进。 |

??? tldr ":material-pencil: 常规编辑"

    | 按键                       | 操作   | 按键                        | 操作   |
    |:-------------------------- |:------ |:--------------------------- |:------ |
    | ++ctrl+z++                 | 撤消。 | ++ctrl+y++                  | 恢复。 |
    | ++ctrl+a++                 | 全选。 |
    | ++ctrl+c++<br>++ctrl+ins++ | 复制。 | ++ctrl+v++<br>++shift+ins++ | 粘贴。 |
    | ++ctrl+x++                 | 剪切。 | ++ctrl+d++<br>++del++       | 删除。 |

参见 [Windows 的键盘快捷方式](https://support.microsoft.com/help/12445)。

## 常用命令

### 系统

???+ tldr ":material-information: 查看系统信息"

    ``` doscon
    %USERPROFILE%> SYSTEMINFO
    ```

??? tldr ":material-restart: 重启系统"

    ``` doscon
    %USERPROFILE%> SHUTDOWN /R /T 60
    ```

??? tldr ":material-power: 关闭系统"

    ``` doscon
    %USERPROFILE%> SHUTDOWN /S /T 60
    ```

### :material-file-link: 文件链接

???+ tldr "建立文件符号链接"

    ``` doscon
    %USERPROFILE%> MKLINK <Link> <Path>
    ```

??? tldr "建立文件硬链接"

    ``` doscon
    %USERPROFILE%> MKLINK /H <Link> <AbsolutePath>
    ```

??? tldr "建立目录符号链接"

    ``` doscon
    %USERPROFILE%> MKLINK /D <Link> <Path>
    ```

??? tldr "建立目录联接"

    ``` doscon
    %USERPROFILE%> MKLINK /J <Link> <AbsolutePath>
    ```

参见：

*   [windows - What is the difference between NTFS Junction Points and Symbolic Links? - Stack Overflow](https://stackoverflow.com/questions/9042542)；
*   [MKLink - Windows CMD - SS64.com](https://ss64.com/nt/mklink.html)；
*   [mklink | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/mklink)。

### 文件散列

CertUtil 是命令行程序，作为 :material-microsoft-windows: Windows 证书服务的一部分进行安装。

???+ tldr "计算文件散列"

    ``` doscon
    %USERPROFILE%> CertUtil -hashfile <InFile> [HashAlgorithm]
    ```

    其中散列算法支持：`MD2`、`MD4`、`MD5`、`SHA1`、`SHA256`、`SHA384`、`SHA512`。参见 `CertUtil -hashfile -?`。

参见 [certutil | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/certutil)。

### :material-network: 网络

???+ tldr "查看本机网络信息"

    ``` doscon
    %USERPROFILE%> ipconfig [/all]
    ```

??? tldr "编辑本地 `HOSTS` 文件"

    1.  ++win+r++
    0.  `notepad %SystemRoot%\System32\drivers\etc\hosts`
    0.  ++ctrl+shift+enter++

??? tldr "查看某域名解析"

    ``` doscon
    %USERPROFILE%> nslookup <Host> [Server]
    ```

??? tldr "显示 DNS 缓存"

    ``` doscon
    %USERPROFILE%> ipconfig /displaydns
    ```

??? tldr "清空 DNS 缓存"

    ``` doscon
    %USERPROFILE%> ipconfig /flushdns
    ```

参见：

*   [arp | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/arp)；
*   [ipconfig | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/ipconfig)；
*   [nslookup](https://docs.microsoft.com/windows-server/administration/windows-commands/nslookup)。


## :material-frequently-asked-questions: 常见问题

??? faq "旧游戏卡顿"

    参见 [Windows １０動作確認表](http://www.illusion.jp/support/windows10.html)。

??? faq "图标显示异常"

    重置图标缓存数据库，旧版 Windows 使用

    ``` doscon
    %USERPROFILE%> ie4uinit -ClearIconCache
    ```

    Windows 10 使用

    ``` doscon
    %USERPROFILE%> ie4uinit -Show
    ```

???+ faq "USB 设备不识别"

    重启 Plug and Play 服务后重试。

???+ faq "如何彻底地变更用户名"

    1.  重命名用户：

        1.  运行（++win+r++）`compmgmt.msc`，打开“计算机管理”；
        0.  `计算机管理(本地)`-->`系统工具`-->`本地用户和组`-->`用户`，找到当前用户；
        0.  `右键`-->`重命名` 以变更名称；
        0.  `右键`-->`属性` 以变更全名。

    0.  启用 `Administrator` 用户：

        1.  类似前述步骤，找到 `Administrator` 用户；
        0.  `右键`-->`属性`-->取消勾选“账户已禁用”选项；
        0.  注销当前用户；
        0.  切换到 `Administrator` 用户。
    
    0.  重命名用户文件夹：

        打开 `%PUBLIC%\..` 目录，找到目标用户文件夹，重命名。
    
    0.  修改注册表中的对应配置：

        1.  运行（++win+r++）`regedit`，打开“注册表管理器”；
        0.  打开 `计算机\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList`；
        0.  遍历该键下的键，筛选 `ProfileImagePath` 指向旧用户目录的项，更新为新用户目录。

    0.  禁用 `Administrator` 用户：

        1.  注销 `Administrator` 用户；
        0.  切换到目标用户；
        0.  类似前述步骤，找到 `Administrator` 用户；
        0.  `右键`-->`属性`-->勾选“账户已禁用”选项；

    0.  修改用户环境变量中的对应配置：

        遍历用户环境变量，筛选指向旧用户目录的项，更新为新用户目录。
    
    0.  重新启动。

    参见 [Win10 将用户名修改为英文 - 白色泪光 - 博客园](https://www.cnblogs.com/WhiteTears/p/8947337.html)。

## Awesome

## 注册码

请通过正规渠道获取以支持正版。

??? tldr "KMS_VL_ALL_AIO"

    !!! warning "声明"

        据《中华人民共和国著作权法（2010年2月26日第二次修正版）》第二十二条，下述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。
    
    1.  访问 [十分钟邮箱](https://10minutemail.com/) 或 [临时邮箱](https://temp-mail.org/) 以获取一个临时邮箱；

    0.  另开标签页，访问 [My Digital Life 论坛注册页面](https://forums.mydigitallife.net/register/)，填入必选信息开始注册；

    0.  返回临时邮箱标签页，此时应当会收到一封邮件，内有确认账户链接，形如：

        ``` text
        https://forums.mydigitallife.net/account-confirmation/*
        ```

        点击以完成注册；

        ??? example "这里有一个先前注册好的账户，但不保证仍然有效"

            |               |                              |
            |:------------- |:---------------------------- |
            | Name          | curious1029                  |
            | Email         | tcziyrlcnirbltbtmq@awdrt.com |
            | Password      | Jl2VZ5IzKTdCdIozweRA         |
            | Date of Birth | 1980-01-01                   |

    0.  访问 [KMS_VL_ALL_AIO 官方话题帖](https://forums.mydigitallife.net/threads/kms_vl_all-smart-activation-script.79535/)，该页面需要登录，登陆后访问页面并获取下载链接；

        ??? example "或者直接访问其 GitHub 上的发布页面"

            <https://github.com/abbodi1406/KMS_VL_ALL_AIO/releases>

    0.  创建 `%ProgramFiles%\KMS_VL_ALL_AIO` 文件夹，并在 Windows Defender 中将其配置为排除项；

    0.  下载 `KMS_VL_ALL_AIO-*.7z`，将其解压到 `%ProgramFiles%\KMS_VL_ALL_AIO` 文件夹；

    0.  运行 `KMS_VL_ALL_AIO.cmd`，参照 `[R] Read Me` 进行安装，通常：
    
        *   先运行 `[2] Install Activation Auto-Renewal`，
        *   然后运行 `[1] Activate [Auto Renewal Mode]`；

    0.  上述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。

??? tldr "KMSpico（年久失修）"

    !!! warning "声明"

        据《中华人民共和国著作权法（2010年2月26日第二次修正版）》第二十二条，下述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。
    
    1.  访问 [十分钟邮箱](https://10minutemail.com/) 或 [临时邮箱](https://temp-mail.org/) 以获取一个临时邮箱；

    0.  另开标签页，访问 [My Digital Life 论坛注册页面](https://forums.mydigitallife.net/register/)，填入必选信息开始注册；

    0.  返回临时邮箱标签页，此时应当会收到一封邮件，内有确认账户链接，形如：

        ``` text
        https://forums.mydigitallife.net/account-confirmation/*
        ```

        点击以完成注册；

        ??? example "这里有一个先前注册好的账户，但不保证仍然有效"

            |               |                              |
            |:------------- |:---------------------------- |
            | Name          | curious1029                  |
            | Email         | tcziyrlcnirbltbtmq@awdrt.com |
            | Password      | Jl2VZ5IzKTdCdIozweRA         |
            | Date of Birth | 1980-01-01                   |

    0.  访问 [KMSpico 官方话题帖](https://forums.mydigitallife.net/threads/kmspico-official-thread.65739/)，该页面需要登录，登陆后访问页面并获取下载链接；

        ??? example "这里有一个先前获取的磁力链接，但不保证仍然有效"

            magnet:?xt=urn:btih:E954AB6B5A93071E8F1A41C509E77F35A50B1B11&dn=KMSpico_v10.2.0

    0.  临时停用 Windows Defender 实时保护；

    0.  下载 KMSpico，运行 `KMSpico_v10.2.0/KMSpico Install/KMSpico_setup.exe` 并安装到默认位置；

    0.  在 Windows Defender 中配置排除项：

        *   `%ProgramFiles%\KMSpico\KMSELDI.exe`，
        *   `%ProgramFiles%\KMSpico\Service_KMS.exe`，
        *   `%ProgramFiles%\KMSpico\AutoPico.exe`，
        *   `%WinDir%\SECOH-QAD.exe`，
        *   `%WinDir%\SECOH-QAD.dll`；

    0.  恢复启用 Windows Defender 实时保护；

    0.  运行 KMSpico；

    0.  上述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。

<!----------------------------------------------------------------------------->

[^Windows on Wikipedia]: [Microsoft Windows - Wikipedia](https://wikipedia.org/wiki/Microsoft_Windows)

*[PE]: Portable Executable

[Microsoft]: <https://www.microsoft.com/>
[Serva]:     <https://vercot.com/~serva/>
[Windows]:   <https://www.microsoft.com/windows/>
