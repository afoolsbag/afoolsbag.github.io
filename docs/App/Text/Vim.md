# Vim

[Vim] 是一款高度可配置的文本编辑器，它的建立使创建和更改任何类型的文本变得非常有效。[^Vim Awesome][^Vim Cheat Sheet][^Vim Chinese Documentation][^The Traditional Vi][^ed.1]

## 运行 Vim

1.  安装 Vim

    === ":fontawesome-brands-windows: Windows + Scoop"

        ``` doscon title="Command Prompt"
        %USERPROFILE%> scoop install vim
        ```

    === ":fontawesome-brands-ubuntu: Ubuntu"

        ``` console title="Bash"
        [sudoer@host ~]$ sudo apt install vim
        ```


0.  编辑 `vimrc`

    === ":fontawesome-brands-windows: Windows"

        ``` doscon title="Command Prompt"
        %USERPROFILE%> vim %USERPROFILE%\_vimrc
        ```

    === ":fontawesome-brands-linux: GNU/Linux"

        ``` console title="Bash"
        [sudoer@host ~]$ vim ~/.vimrc
        ```

0.  安装 [vim-plug]

    === ":fontawesome-brands-windows: Windows"

        ``` ps1con title="PowerShell"
        PS $env:USERPROFILE> Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
                             New-Item $HOME\vimfiles\autoload\plug.vim -Force
        PS abbr.           > iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
                             ni $HOME\vimfiles\autoload\plug.vim -f
        ```

    === ":fontawesome-brands-linux: GNU/Linux"

        ``` console title="Bash"
        [sudoer@host ~]$ curl --fail --location --output ~/.vim/autoload/plug.vim --create-dirs \
                         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        [abbr.        ]$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
                         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        ```

0.  通过 vim-plug 安装插件

    === ":fontawesome-brands-windows: Windows"

        ``` doscon title="Command Prompt"
        %USERPROFILE%> vim
        ```

    === ":fontawesome-brands-linux: GNU/Linux"

        ``` console title="Bash"
        [sudoer@host ~]$ vim
        ```

    ``` vim title="Vim"
    :PlugInstall
    ```

## `vimrc`

``` vim title=":edit $MYVIMRC"
--8<-- "includes/.vimrc"
```

## 小抄

=== "移动<br>Motion"

    ``` text
      0        10        20        30        40        50        60        70        80
      |_________|_________|_________|_________|_________|_________|_________|_________|
     1|    H                                                     (word)    b ge w  e  |
     2|                                                          (WORD)    B gE W  E  |
     3|    (Home)                                            (sentence)       ( )     |
     4|                                (end)                (paragraph)       { }     |
     5|                                 (word)                (section)   [[ [] ]] ][ |
     6|                   (backward)      (END)                                       |
     7|                (BACKWARD)           (WORD)             (method)   [m [M ]m ]M |
     8|    -                         k                                       [( ])    |
     9|0   ^                   B  b h█l ew E W                   $           [{ ]}    |
    10|    +                         j                                       [* ]*    |
    11|                                                                      [# ]#  % |
    12|    The quick brown fox ---jum█mps--- over the lazy dog.⎵⎵⎵                    |
    13|                                                                               |
    14|  M ·   ·     ··      ·   ·   ·       ·        ··    ·                  m{a-z} |
    15|        {9}|   T{b}   gE  ge  gm      F{o},     f{a} f{o};              :marks |
    16| (Middle)     F{b}                             t{a}                     `{a-z} |
    17|                                                                               |
    18|                                                                        CTRL-] |
    19|                                                                         :tags |
    20|                                                                   CTRL-T :tag |
    21|   (Last)                                                                      |
    22|                                                                      :ju[mps] |
    23|    L                                                            CTRL-O CTRL-I |
    24|_______________________________________________________________________________|
    ```

=== "插入<br/>Insert"

    ``` text
      0        10        20        30        40        50        60        70        80
      |_________|_________|_________|_________|_________|_________|_________|_________|
     1|                                                                               |
     2|                                                                               |
     3|                                                                               |
     4|                                                                               |
     5|                                                                               |
     6|                             (insert)                                          |
     7|                              (append)                   (APPEND)              |
     8|    O                                                                          |
     9|    I   (INSERT)              ia                          A                    |
    10|    o                                                                          |
    11|                                                                               |
    12|    The quick brown fox ---jum█mps--- over the lazy dog.⎵⎵⎵                    |
    13|                                                                               |
    14|·                             █                                                |
    15|gI                                                                             |
    16|                                                                               |
    17|                                                                               |
    18|                                                                               |
    19|                                                                               |
    20|                                                                               |
    21|                                                                      q{a-z} q |
    22|                                                                  :reg[isters] |
    23|                                                                        @{a-z} |
    24|_______________________________________________________________________________|
    ```

=== "删除<br/>Delete"

    ``` text
      0        10        20        30        40        50        60        70        80
      |_________|_________|_________|_________|_________|_________|_________|_________|
     1|                                                          (word)      aw iw    |
     2|                                                          (WORD)      aW iW    |
     3|                                                      (sentence)      as is    |
     4|                                                     (paragraph)      ap ip    |
     5|                                                                               |
     6|                                                                               |
     7|                                                         (DELETE)              |
     8|                                                                      a( i(    |
     9|                             Xx                           D           a{ i{    |
    10|                                                                               |
    11|                                                                               |
    12|    The quick brown fox ---jum█mps--- over the lazy dog.⎵⎵⎵           a[ i]    |
    13|                                                                      a< i>    |
    14| dd ·                         █                                       at it    |
    15|                                                                      a' i'    |
    16|                                                                      a" i"    |
    17|                                                                      a` i`    |
    18|                                                                               |
    19|                                                                               |
    20|                                                                               |
    21|                                                                               |
    22|                                                                      u CTRL-R |
    23|                                                                   :undol[ist] |
    24|_______________________________________________________________________________|
    ```

=== "拉取和放置<br/>Yank & Put"

    ``` text
      0        10        20        30        40        50        60        70        80
      |_________|_________|_________|_________|_________|_________|_________|_________|
     1|                                                          (word)      aw iw    |
     2|                                                          (WORD)      aW iW    |
     3|                                                      (sentence)      as is    |
     4|                                                     (paragraph)      ap ip    |
     5|                                                                               |
     6|                             (PUT)                                             |
     7| (YANK)                       (put)                                            |
     8|                                                                      a( i(    |
     9|  Y ·                         Pp                                      a{ i{    |
    10|                                                                               |
    11|                                                                               |
    12|    The quick brown fox ---jum█mps--- over the lazy dog.⎵⎵⎵           a[ i]    |
    13|                                                                      a< i>    |
    14| yy ·                         ·                           ·           at it    |
    15|                              yl                          y$          a' i'    |
    16|                                                                      a" i"    |
    17|                                                                      a` i`    |
    18|                                                          (clipboard)       "+ |
    19|                                                               (yank)       "0 |
    20|                                                             (delete)       "- |
    21|                                                             (delete)   "{1-9} |
    22|                                                                        "{a-z} |
    23|                                                                  :reg[isters] |
    24|_______________________________________________________________________________|
    ```

=== "变更和替换<br/>Change & Replace"

    ``` text
      0        10        20        30        40        50        60        70        80
      |_________|_________|_________|_________|_________|_________|_________|_________|
     1|                                                          (word)      aw iw    |
     2|                                                          (WORD)      aW iW    |
     3|                                                      (sentence)      as is    |
     4|                                                     (paragraph)      ap ip    |
     5|                                                                               |
     6|                                                                               |
     7|                                                                               |
     8|                              r                                       a( i(    |
     9|  S ·                         s                           C           a{ i{    |
    10|                                                                               |
    11|                                                                               |
    12|    The quick brown fox ---jum█mps--- over the lazy dog.⎵⎵⎵           a[ i]    |
    13|                                                                      a< i>    |
    14| cc ·                         █                                       at it    |
    15|                                                                      a' i'    |
    16|                                                                      a" i"    |
    17|                                                                      a` i`    |
    18|                                                                               |
    19|                                                                               |
    20|                                                                               |
    21|                                                                               |
    22|                                                                               |
    23|                                                                               |
    24|_______________________________________________________________________________|
    ```

=== "选取和滚屏<br>Visual & Scroll"

    ``` text
      0        10        20        30        40        50        60        70        80
      |_________|_________|_________|_________|_________|_________|_________|_________|
     1|    /  CTRL-B   (Backwards)                                             =o> zt |
     2|    /  CTRL-U   (Upwards)                                                      |
     3|    /  CTRL-Y                                                                  |
     4|   [/]                                                                         |
     5|    /                                                                          |
     6|                                                                               |
     7|                                                                               |
     8|                                                                               |
     9|                                                                               |
    10|                                                                               |
    11|                                                                               |
    12|    The quick brown fox ---jum█mps--- over the lazy dog.⎵⎵⎵             =o> zz |
    13|                       ______________________                                  |
    14|                       |________|__o__|__O__|                                  |
    15|       (characterwise) |______v_| ^   |     |                                  |
    16|            (linewise) |______V_|  \  | <-> |                                  |
    17|           (blockwise) |_CTRL-V_|___v_|_____|                                  |
    18|                                                                               |
    19|    /                                                                          |
    20|   [/]                                                                         |
    21|    /  CTRL-E   (Extra)                                                        |
    22|    /  CTRL-D   (Downwards)                                                    |
    23|    /  CTRL-E   (Forwards)                                              =o> zb |
    24|_______________________________________________________________________________|
    ```

=== "窗口和标签页<br>Window & TabPage"

    ``` text
      0        10        20        30        40        50        60        70        80
      |_________|_________|_________|_________|_________|_________|_________|_________|
     1|                                                                         :tabs |
     2|                                                                         gT gt |
     3|                                                                               |
     4|                                                                               |
     5|                                                                               |
     6|                                                                               |
     7|                                                                               |
     8|                                                                               |
     9|                                                                               |
    10|                                                                               |
    11|                                                                               |
    12|    The quick brown fox ---jum█mps--- over the lazy dog.⎵⎵⎵                    |
    13|                                                                               |
    14|    '''''''''                                         (top)   CTRL-W_t         |
    15|    --------- CTRL-W_s   (split)                     (WRAP)   CTRL-W_W         |
    16|    .........                                                 CTRL-W_k         |
    17|                                                      CTRL-W_h        CTRL-W_l |
    18|    :   :   :                                                 CTRL-W_j         |
    19|    :   :   : CTRL-W_v   (vertical split)            (wrap)   CTRL-W_w         |
    20|    :   :   :                                      (buttom)   CTRL-W_b         |
    21|                                                                               |
    22|              CTRL-W_c   (close)                 (previous)   CTRL-W_p         |
    23|              CTRL-W_q   (quit)                                       :buffers |
    24|_______________________________________________________________________________|
    ```

## 帮助手册

!!! help "[++f1++][f1]"
    ???+ tldr "[快速参考指南][quickref]"
        1.  帮助文件清单
        0.  动作: 左右
        0.  动作: 上下
        0.  动作: 文本对象
        0.  动作: 模式查找
        0.  [动作: 位置标记][Q_ma]
        0.  动作: 其他
        0.  [动作: 使用标签][Q_ta]
        0.  [屏幕滚动][Q_sc]
        0.  插入: 插入文本
        0.  插入: 普通键
        0.  插入: 特殊键
        0.  插入: 二合字母
        0.  插入: 特殊插入
        0.  改动: 删除文本
        0.  改动: 复制与移动
        0.  改动: 修改文本
        0.  改动: 复杂
        0.  可视模式
        0.  [文本对象][Q_to]
        0.  [重复命令][Q_re]
        0.  键盘映射
        0.  缩写
        0.  [选项][Q_op]
            1.  [选项列表][option-list]
        0.  [撤销/重做命令][Q_ur]
        0.  外部命令
        0.  快速修复命令
        0.  其他命令
        0.  Ex: 命令行编辑
        0.  Ex: 范围
        0.  Ex: 特殊字符
        0.  启动 Vim
        0.  文件编辑
        0.  使用参数列表
        0.  [写入与退出][Q_wq]
        0.  自动命令
        0.  [多窗口命令][Q_wi]
        0.  缓冲区列表命令
        0.  语法高亮
        0.  GUI 命令
        0.  折叠
    ??? tldr "用户手册：这些文件解释如何完成一项编辑任务。"
        1.  [目录][usr_toc.txt]
        0.  初步知识
            1.  关于本手册
            0.  Vim 初步
            0.  移动
            0.  做小改动
            0.  选项设置
            0.  使用语法高亮
            0.  编辑多个文件
            0.  分割窗口
            0.  使用 GUI 版本
            0.  做大修改
            0.  从崩溃中恢复
            0.  小窍门
        0.  高效地编辑
            1.  快速键入命令行
            0.  离开和回来
            0.  寻找要编辑的文件
            0.  编辑特殊文件
            0.  快速插入
            0.  编辑带格式的文本
            0.  重复
            0.  查找命令及模式
            0.  折叠
            0.  在代码间移动
            0.  编辑程序
            0.  利用 GUI
            0.  撤销树
        0.  调节 Vim
            1.  创建新的命令
            0.  编写 Vim 脚本
            0.  添加新的菜单
            0.  使用文件类型
            0.  自定义语法高亮
            0.  选择你的语言
        0.  让 Vim 工作
            1.  安装 Vim
    ??? tldr "[参考手册][reference_toc]：这些文件详细地解释 Vim 的每个细节。"
        1.  一般主题
            1.  对 Vim 的一般介绍；帮助文件中所使用的符号
            0.  总览及快速参考 (本文件)
            0.  关于如何使用帮助文件
            0.  [以字母顺序排列的命令索引][index.txt]
            0.  可跳转的所有标签 (标签索引)
            0.  如何完成最常见的编辑任务
            0.  Vim 的各种窍门
            0.  (错误) 信息及解释
            0.  Vim 的用户评价
            0.  已知的问题以及扩展计划
            0.  Vim 的开发
            0.  调试 Vim 自身
            0.  Vim 发布条件和怎么花你的 money
        0.  基本编辑
            1.  启动 Vim，Vim 命令参数，初始化
            0.  编辑和写入文件
            0.  有关移动的命令
            0.  在窗口中滚动文本
            0.  插入模式和替换模式
            0.  [删除和替换文本][change.txt]
                1.  [寄存器][registers]
            0.  撤销和重做
            0.  重复命令，Vim 脚本及调试
            0.  使用可视模式 (选择一个文本区域)
            0.  各种其它命令
            0.  从崩溃中恢复
        0.  高级编辑
            1.  命令行编辑
            0.  [所有选项的描述][options.txt]
                1.  [模式行][modeline]
            0.  正则表达式及查找命令
            0.  键盘映射及缩写
            0.  标签及特殊查找
            0.  使用多窗口多缓冲区的命令
            0.  [使用多个标签页的命令][tabpage.txt]
                1.  [tabpage][tabpage]
            0.  拼写检查
            0.  编辑同一文本的两到四个版本
            0.  当事件发生时自动执行命令
            0.  表达式求值
                1.  [内建函数][functions]
            0.  作业、通道、进程间通信
            0.  隐藏 (折叠) 一定范围内的文本
        0.  特殊问题
            1.  Vim 和 Vim 脚本的测试
            0.  打印
            0.  将 Vim 用作服务器/客户端
            0.  使用不同终端和鼠标
            0.  终端窗口支持
            0.  弹出窗口支持
        0.  编程语言支持
            1.  C 及其它语言的自动缩进
            0.  语法高亮
            0.  为文本附加属性，用于高亮和其它目的
            0.  对某一类型文件的专有设定
            0.  支持快速 编辑-编译-修正 循环的命令
            0.  Ada (编程语言) 支持
            0.  Rust 文件类型支持
            0.  SQL 文件类型插件相关
        0.  语言支持
            1.  可用的二合字母清单
            0.  多字节文本支持
            0.  非英语语言支持
            0.  从右向左的编辑模式
            0.  阿拉伯语支持及编辑
            0.  波斯语编辑
            0.  希伯来语支持及编辑
            0.  俄罗斯语支持及编辑
            0.  韩语输入模式
        0.  GUI
            1.  图形用户界面 (GUI)
            0.  Win32 GUI
            0.  X11 GUI
        0.  各种接口
            1.  联用 cscope 与 Vim
            0.  Lua 接口
            0.  MzScheme 接口
            0.  Perl 接口
            0.  Python 接口
            0.  Tcl 接口
            0.  Win32 下的 OLE 接口
            0.  Ruby 接口
            0.  与调试程序的接口
            0.  NetBeans 外部编辑器接口
            0.  调试标号
        0.  版本
            1.  Vim 和 Vi 之间的主要区别
            0.  Vim 3.0 和 4.x 版本的区别
            0.  Vim 4.6 和 5.x 版本的区别
            0.  Vim 5.7 和 6.x 版本的区别
            0.  Vim 6.4 和 7.x 版本的区别
            0.  Vim 7.4 和 8.x 版本的区别
        0.  [特定系统相关][sys-file-list]
            1.  OS/390 Unix
            0.  Amiga
            0.  BeOS 和 BeBox
            0.  MS-DOS 和 MS-Windows 通用的条目
            0.  Haiku
            0.  Macintosh
            0.  Atari MiNT
            0.  MS-DOS (纯 DOS 及 Windows 内的 DOS 窗口)
            0.  OS/2
            0.  QNX
            0.  RISC-OS
            0.  Unix
            0.  VMS
            0.  MS-Windows
        0.  [标准插件][standard-plugin-list]
            1.  下载 Vim 脚本的最新版本
            0.  读写压缩过的文件
            0.  模式的逻辑操作符
            0.  通过网络读写文件
            0.  高亮匹配括号
            0.  用于 rpm 规格文件的文件类型插件
            0.  Tar 文件探索器
            0.  创建自安装的 Vim 脚本
            0.  Zip 归档探索器
        0.  本地附加文档

<!----------------------------------------------------------------------------->

[^Vim Awesome]:               [Vim Awesome](https://vimawesome.com/)
[^Vim Cheat Sheet]:           [Vim Cheat Sheet](https://vim.rtorr.com/lang/zh_cn)
[^Vim Chinese Documentation]: [Vim Chinese Documentation](https://github.com/yianwillis/vimcdoc)
[^The Traditional Vi]:        [The Traditional Vi](http://ex-vi.sourceforge.net/)
[^ed.1]:                      [ed.1](http://heirloom.sourceforge.net/man/ed.1.html)

[change.txt]:           https://yianwillis.github.io/vimcdoc/doc/change.html#change.txt
[doc-file-list]:        https://yianwillis.github.io/vimcdoc/doc/help.html#doc-file-list
[f1]:                   https://yianwillis.github.io/vimcdoc/doc/help.html
[functions]:            https://yianwillis.github.io/vimcdoc/doc/eval.html#functions
[help.txt]:             https://yianwillis.github.io/vimcdoc/doc/help.html#help.txt
[index.txt]:            https://yianwillis.github.io/vimcdoc/doc/index.html#index.txt
[modeline]:             https://yianwillis.github.io/vimcdoc/doc/options.html#modeline
[option-list]:          https://yianwillis.github.io/vimcdoc/doc/quickref.html#option-list
[options.txt]:          https://yianwillis.github.io/vimcdoc/doc/options.html#options.txt
[Q_ma]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ma
[Q_op]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_op
[Q_re]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_re
[Q_sc]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_sc
[Q_ta]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ta
[Q_to]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_to
[Q_ur]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ur
[Q_wi]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_wi
[Q_wq]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_wq
[quickref]:             https://yianwillis.github.io/vimcdoc/doc/quickref.html#quickref
[reference_toc]:        https://yianwillis.github.io/vimcdoc/doc/help.html#reference_toc
[registers]:            https://yianwillis.github.io/vimcdoc/doc/change.html#registers
[standard-plugin-list]: https://yianwillis.github.io/vimcdoc/doc/help.html#standard-plugin-list
[sys-file-list]:        https://yianwillis.github.io/vimcdoc/doc/help.html#sys-file-list
[tabpage]:              https://yianwillis.github.io/vimcdoc/doc/tabpage.html#tabpage
[tabpage.txt]:          https://yianwillis.github.io/vimcdoc/doc/tabpage.html#tabpage.txt
[usr_toc.txt]:          https://yianwillis.github.io/vimcdoc/doc/usr_toc.html#usr_toc.txt

<!-- vim: set ts=4 et: -->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
