# Vim

[Vim] 是一款高度可配置的文本编辑器，它的建立使创建和更改任何类型的文本变得非常有效。

参见：

*   [Vim Awesome](https://vimawesome.com/)
*   [Vim Cheat Sheet](https://vim.rtorr.com/lang/zh_cn)
*   [Vim Chinese Documentation](https://github.com/yianwillis/vimcdoc)
    *   帮助总览 [VIM: help](https://yianwillis.github.io/vimcdoc/doc/help.html)
    *   快速参考 [VIM: quickref](https://yianwillis.github.io/vimcdoc/doc/quickref.html)
    *   命令索引 [VIM: index](https://yianwillis.github.io/vimcdoc/doc/index.html)
    *   函数列表 [VIM: eval § functions](https://yianwillis.github.io/vimcdoc/doc/eval.html#functions)
    *   选项列表 [VIM: quickref § option-list](https://yianwillis.github.io/vimcdoc/doc/quickref.html#option-list)
    *   用户手册 [VIM: usr_toc](https://yianwillis.github.io/vimcdoc/doc/usr_toc.html)
    *   参考手册 [VIM: help § reference_toc](https://yianwillis.github.io/vimcdoc/doc/help.html#reference_toc)
*   [The Traditional Vi](http://ex-vi.sourceforge.net/)
*   [ed.1](http://heirloom.sourceforge.net/man/ed.1.html)

## 运行 Vim

### :material-microsoft-windows: Windows 10 和 Scoop

1.  安装 Vim

    ``` doscon
    %USERPROFILE%> scoop install vim
    ```

0.  编辑 `vimrc`

    ``` doscon
    %USERPROFILE%> vim %USERPROFILE%\_vimrc
    ```

0.  安装 [vim-plug]

    ``` ps1con
    PS $env:USERPROFILE> Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
                         New-Item $HOME\vimfiles\autoload\plug.vim -Force
    PS abbr.           > iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
                         ni $HOME\vimfiles\autoload\plug.vim -f
    ```

0.  通过 vim-plug 安装插件

    ``` doscon
    %USERPROFILE%> vim
    ```

    ``` vim
    :PlugInstall
    ```

<!--
0.  安装 [Vundle]（需要 Git 和 curl）

    ``` doscon
    %USERPROFILE%> git clone https://github.com/VundleVim/Vundle.vim.git ^
                             %USERPROFILE%\vimfiles\bundle\Vundle.vim
    ```

0.  Vundle 需要的 `vimrc`

    ``` vim
    " Vundle
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    if !has('win32')
      set nocompatible
    endif
    filetype off
    if has('win32')
      set shellslash
    endif
    
    if has('win32')
      set runtimepath+=~/vimfiles/bundle/Vundle.vim
      call vundle#begin('~/vimfiles/bundle')
    else
      set runtimepath+=~/.vim/bundle/Vundle.vim
      call vundle#begin()
    endif
    Plugin 'VundleVim/Vundle.vim'
    
    " 在此处列出偏爱的插件：
    " 偏爱的插件列表结束。

    call vundle#end()
    filetype plugin indent on
    """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    ```

    参见：

    *   [VundleVim/Vundle.vim: Vundle, the plug-in manager for Vim § Quick Start](https://github.com/VundleVim/Vundle.vim#quick-start)
    *   [Vundle for Windows · VundleVim/Vundle.vim Wiki § Vundle on Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows#vundle-on-windows)

0.  通过 Vundle 安装插件

    ``` doscon
    %USERPROFILE%> vim
    ```

    ``` vim
    :PluginInstall
    ```
-->

## `vimrc`

``` vim
:edit $MYVIMRC
```

``` vim
" vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('win32')
  call plug#begin('~/vimfiles/plugged')
else
  call plug#begin('~/.vim/plugged')
endif

" 在此处列出偏爱的插件：
"Plug 'altercation/vim-colors-solarized' " 主题
Plug 'airblade/vim-gitgutter'            " 文本内 Git 变更呈现
"Plug 'flazz/vim-colorschemes'           " 主题包
Plug 'godlygeek/tabular'                 " 文本对齐
"Plug 'junegunn/goyo.vim'                " 黑屋子模式
"Plug 'junegunn/limelight.vim'           " 焦点外虚化
Plug 'kien/ctrlp.vim'                    " 转到文件
Plug 'luochen1990/rainbow'               " 彩虹括号
Plug 'mhinz/vim-startify'                " 起始页
"Plug 'neoclide/coc.nvim'                " 基于 LSP 的智能补全，需要 nodejs >= 10.12
Plug 'sheerun/vim-polyglot'              " 扩展语言包
Plug 'scrooloose/nerdtree'               " 文件树浏览器
Plug 'tpope/vim-commentary'              " 注释编辑
Plug 'tpope/vim-repeat'                  " 更好的重复
Plug 'tpope/vim-speeddating'             " 日期增减
Plug 'tpope/vim-surround'                " 括号编辑
Plug 'vim-airline/vim-airline'           " 状态栏
"Plug 'vim-airline/vim-airline-themes'   " 状态栏主题
Plug 'vim-scripts/YankRing.vim'          " 剪贴板可视化
Plug 'w0rp/ale'                          " 语法检查
"Plug 'ycm-core/YouCompleteMe'           " 基于 Clang 的智能补全
Plug 'yianwillis/vimcdoc'                " 中文文档
" 偏爱的插件列表结束。

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 默认配置
source $VIMRUNTIME/defaults.vim

" A

" 自动缩进
set autoindent

" E

" 编码
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

" L

" 呈现某些空白符
" eol      U+23CE ⏎ Return Symbol
" tab      U+205E ⁞ Vertical Four Dots
" space    U+00B7 · Middle Dot
" trail
" extends  U+2026 … Horizontal Ellipsis
" precedes U+2026 … Horizontal Ellipsis
" conceal
" nbsp     U+23B5 ⎵ Bottom Square Bracke
set listchars=eol:⏎,tab:⁞\ ,space:·,extends:…,precedes:…,nbsp:⎵
set list

" N

" 显示行号
"set number

" T

" 制表符
"set tabstop=4
"set expandtab
```

## [++f1++](https://yianwillis.github.io/vimcdoc/doc/help.html)

这是 Vim 内置文档的列表，扁平至此以便于探寻。（[`doc-file-list`](https://yianwillis.github.io/vimcdoc/doc/help.html#doc-file-list)）

常查标签：

| 标签                                                                          | 描述       |
| :---------------------------------------------------------------------------- | :--------- |
| [`Q_to`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_to)         | 文本对象   |
| [`Q_ma`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ma)         | 标记       |
| [`Q_ta`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ta)         | 标签       |
| [`Q_sc`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_sc)         | 滚屏       |
| [`Q_re`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_re)         | 重复       |
| [`Q_ur`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ur)         | 撤销和重做 |
| [`Q_wq`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_wq)         | 写入和退出 |
| [`Q_wi`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_wi)         | 多窗口     |
| [`tabpage`](https://yianwillis.github.io/vimcdoc/doc/tabpage.html#tabpage)    | 标签页     |
| [`modeline`](https://yianwillis.github.io/vimcdoc/doc/options.html#modeline)  | 模式行     |
| [`registers`](https://yianwillis.github.io/vimcdoc/doc/change.html#registers) | 寄存器     |

### 基础

| 标签                                                                          | 描述                              |
| :---------------------------------------------------------------------------- | :-------------------------------- |
| [`quickref`](https://yianwillis.github.io/vimcdoc/doc/quickref.html#quickref) | 总览最常用的命令                  |
| [`tutor`](https://yianwillis.github.io/vimcdoc/doc/usr_01.html#tutor)         | 面向初学者的 30 分钟交互式教程    |
| [`copying`](https://yianwillis.github.io/vimcdoc/doc/uganda.html#copying)     | 版权信息                          |
| [`iccf`](https://yianwillis.github.io/vimcdoc/doc/uganda.html#iccf)           | 资助乌干达贫困儿童                |
| [`sponsor`](https://yianwillis.github.io/vimcdoc/doc/sponsor.html#sponsor)    | 赞助 Vim 的开发，成为一名注册用户 |
| [`www`](https://yianwillis.github.io/vimcdoc/doc/intro.html#www)              | 互联网上的 Vim                    |
| [`bugs`](https://yianwillis.github.io/vimcdoc/doc/intro.html#bugs)            | 如何提交漏洞报告                  |

### 用户手册

这些文件解释如何完成一项编辑任务。（[`user-manual`](https://yianwillis.github.io/vimcdoc/doc/help.html#user-manual)）

| 标签                                                                               | 描述 |
| :--------------------------------------------------------------------------------- | :--- |
| [`usr_toc.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_toc.html#usr_toc.txt) | 目录 |

#### 初步知识

| 标签                                                                            | 描述          |
| :------------------------------------------------------------------------------ | :------------ |
| [`usr_01.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_01.html#usr_01.txt) | 关于本手册    |
| [`usr_02.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_02.html#usr_02.txt) | Vim 初步      |
| [`usr_03.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_03.html#usr_03.txt) | 移动          |
| [`usr_04.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_04.html#usr_04.txt) | 做小改动      |
| [`usr_05.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_05.html#usr_05.txt) | 选项设置      |
| [`usr_06.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_06.html#usr_06.txt) | 使用语法高亮  |
| [`usr_07.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_07.html#usr_07.txt) | 编辑多个文件  |
| [`usr_08.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_08.html#usr_08.txt) | 分割窗口      |
| [`usr_09.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_09.html#usr_09.txt) | 使用 GUI 版本 |
| [`usr_10.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_10.html#usr_10.txt) | 做大修改      |
| [`usr_11.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_11.html#usr_11.txt) | 从崩溃中恢复  |
| [`usr_12.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_12.html#usr_12.txt) | 小窍门        |

#### 高效地编辑

| 标签                                                                            | 描述             |
| :------------------------------------------------------------------------------ | :--------------- |
| [`usr_20.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_20.html#usr_20.txt) | 快速键入命令行   |
| [`usr_21.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_21.html#usr_21.txt) | 离开和回来       |
| [`usr_22.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_22.html#usr_22.txt) | 寻找要编辑的文件 |
| [`usr_23.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_23.html#usr_23.txt) | 编辑特殊文件     |
| [`usr_24.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_24.html#usr_24.txt) | 快速插入         |
| [`usr_25.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_25.html#usr_25.txt) | 编辑带格式的文本 |
| [`usr_26.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_26.html#usr_26.txt) | 重复             |
| [`usr_27.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_27.html#usr_27.txt) | 查找命令及模式   |
| [`usr_28.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_28.html#usr_28.txt) | 折叠             |
| [`usr_29.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_29.html#usr_29.txt) | 在代码间移动     |
| [`usr_30.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_30.html#usr_30.txt) | 编辑程序         |
| [`usr_31.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_31.html#usr_31.txt) | 利用 GUI         |
| [`usr_32.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_32.html#usr_32.txt) | 撤销树           |

#### 调节 Vim

| 标签                                                                            | 描述           |
| :------------------------------------------------------------------------------ | :------------- |
| [`usr_40.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_40.html#usr_40.txt) | 创建新的命令   |
| [`usr_41.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_41.html#usr_41.txt) | 编写 Vim 脚本  |
| [`usr_42.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_42.html#usr_42.txt) | 添加新的菜单   |
| [`usr_43.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_43.html#usr_43.txt) | 使用文件类型   |
| [`usr_44.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_44.html#usr_44.txt) | 自定义语法高亮 |
| [`usr_45.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_45.html#usr_45.txt) | 选择你的语言   |

#### 让 Vim 工作

| 标签                                                                            | 描述     |
| :------------------------------------------------------------------------------ | :------- |
| [`usr_90.txt`](https://yianwillis.github.io/vimcdoc/doc/usr_90.html#usr_90.txt) | 安装 Vim |

### 参考手册

这些文件详细地解释 Vim 的每个细节。（[`reference_toc`](https://yianwillis.github.io/vimcdoc/doc/help.html#reference_toc)）

#### 一般主题

| 标签                                                                                  | 描述                                      |
| :------------------------------------------------------------------------------------ | :---------------------------------------- |
| [`intro.txt`](https://yianwillis.github.io/vimcdoc/doc/intro.html#intro.txt)          | 对 Vim 的一般介绍；帮助文件中所使用的符号 |
| [`help.txt`](https://yianwillis.github.io/vimcdoc/doc/help.html#help.txt)             | 总览及快速参考 (本文件)                   |
| [`helphelp.txt`](https://yianwillis.github.io/vimcdoc/doc/helphelp.html#helphelp.txt) | 关于如何使用帮助文件                      |
| [`index.txt`](https://yianwillis.github.io/vimcdoc/doc/index.html#index.txt)          | 以字母顺序排列的命令索引                  |
| [`help-tags`](https://yianwillis.github.io/vimcdoc/doc/tags.html)                     | 可跳转的所有标签 (标签索引)               |
| [`howto.txt`](https://yianwillis.github.io/vimcdoc/doc/howto.html#howto.txt)          | 如何完成最常见的编辑任务                  |
| [`tips.txt`](https://yianwillis.github.io/vimcdoc/doc/tips.html#tips.txt)             | Vim 的各种窍门                            |
| [`message.txt`](https://yianwillis.github.io/vimcdoc/doc/message.html#message.txt)    | (错误) 信息及解释                         |
| [`quotes.txt`](https://yianwillis.github.io/vimcdoc/doc/quotes.html#quotes.txt)       | Vim 的用户评价                            |
| [`todo.txt`](https://yianwillis.github.io/vimcdoc/doc/todo.html#todo.txt)             | 已知的问题以及扩展计划                    |
| [`develop.txt`](https://yianwillis.github.io/vimcdoc/doc/develop.html#develop.txt)    | Vim 的开发                                |
| [`debug.txt`](https://yianwillis.github.io/vimcdoc/doc/debug.html#debug.txt)          | 调试 Vim 自身                             |
| [`uganda.txt`](https://yianwillis.github.io/vimcdoc/doc/uganda.html#uganda.txt)       | Vim 发布条件和怎么花你的 money            |

#### 基本编辑

| 标签                                                                                  | 描述                            |
| :------------------------------------------------------------------------------------ | :------------------------------ |
| [`starting.txt`](https://yianwillis.github.io/vimcdoc/doc/starting.html#starting.txt) | 启动 Vim，Vim 命令参数，初始化  |
| [`editing.txt`](https://yianwillis.github.io/vimcdoc/doc/editing.html#editing.txt)    | 编辑和写入文件                  |
| [`motion.txt`](https://yianwillis.github.io/vimcdoc/doc/motion.html#motion.txt)       | 有关移动的命令                  |
| [`scroll.txt`](https://yianwillis.github.io/vimcdoc/doc/scroll.html#scroll.txt)       | 在窗口中滚动文本                |
| [`insert.txt`](https://yianwillis.github.io/vimcdoc/doc/insert.html#insert.txt)       | 插入模式和替换模式              |
| [`change.txt`](https://yianwillis.github.io/vimcdoc/doc/change.html#change.txt)       | 删除和替换文本                  |
| [`undo.txt`](https://yianwillis.github.io/vimcdoc/doc/undo.html#undo.txt)             | 撤销和重做                      |
| [`repeat.txt`](https://yianwillis.github.io/vimcdoc/doc/repeat.html#repeat.txt)       | 重复命令，Vim 脚本及调试        |
| [`visual.txt`](https://yianwillis.github.io/vimcdoc/doc/visual.html#visual.txt)       | 使用可视模式 (选择一个文本区域) |
| [`various.txt`](https://yianwillis.github.io/vimcdoc/doc/various.html#various.txt)    | 各种其它命令                    |
| [`recover.txt`](https://yianwillis.github.io/vimcdoc/doc/recover.html#recover.txt)    | 从崩溃中恢复                    |

#### 高级编辑

| 标签                                                                               | 描述                         |
| :--------------------------------------------------------------------------------- | :--------------------------- |
| [`cmdline.txt`](https://yianwillis.github.io/vimcdoc/doc/cmdline.html#cmdline.txt) | 命令行编辑                   |
| [`options.txt`](https://yianwillis.github.io/vimcdoc/doc/options.html#options.txt) | 所有选项的描述               |
| [`pattern.txt`](https://yianwillis.github.io/vimcdoc/doc/pattern.html#pattern.txt) | 正则表达式及查找命令         |
| [`map.txt`](https://yianwillis.github.io/vimcdoc/doc/map.html#map.txt)             | 键盘映射及缩写               |
| [`tagsrch.txt`](https://yianwillis.github.io/vimcdoc/doc/tagsrch.html#tagsrch.txt) | 标签及特殊查找               |
| [`windows.txt`](https://yianwillis.github.io/vimcdoc/doc/windows.html#windows.txt) | 使用多窗口多缓冲区的命令     |
| [`tabpage.txt`](https://yianwillis.github.io/vimcdoc/doc/tabpage.html#tabpage.txt) | 使用多个标签页的命令         |
| [`spell.txt`](https://yianwillis.github.io/vimcdoc/doc/spell.html#spell.txt)       | 拼写检查                     |
| [`diff.txt`](https://yianwillis.github.io/vimcdoc/doc/diff.html#diff.txt)          | 编辑同一文本的两到四个版本   |
| [`autocmd.txt`](https://yianwillis.github.io/vimcdoc/doc/autocmd.html#autocmd.txt) | 当事件发生时自动执行命令     |
| [`eval.txt`](https://yianwillis.github.io/vimcdoc/doc/eval.html#eval.txt)          | 表达式求值，条件执行命令     |
| [`channel.txt`](https://yianwillis.github.io/vimcdoc/doc/channel.html#channel.txt) | 作业、通道、进程间通信       |
| [`fold.txt`](https://yianwillis.github.io/vimcdoc/doc/fold.html#fold.txt)          | 隐藏 (折叠) 一定范围内的文本 |

#### 特殊问题

| 标签                                                                                  | 描述                     |
| :------------------------------------------------------------------------------------ | :----------------------- |
| [`testing.txt`](https://yianwillis.github.io/vimcdoc/doc/testing.html#testing.txt)    | Vim 和 Vim 脚本的测试    |
| [`print.txt`](https://yianwillis.github.io/vimcdoc/doc/print.html#print.txt)          | 打印                     |
| [`remote.txt`](https://yianwillis.github.io/vimcdoc/doc/remote.html#remote.txt)       | 将 Vim 用作服务器/客户端 |
| [`term.txt`](https://yianwillis.github.io/vimcdoc/doc/term.html#term.txt)             | 使用不同终端和鼠标       |
| [`terminal.txt`](https://yianwillis.github.io/vimcdoc/doc/terminal.html#terminal.txt) | 终端窗口支持             |
| [`popup.txt`](https://yianwillis.github.io/vimcdoc/doc/popup.html#popup.txt)          | 弹出窗口支持             |

#### 编程语言支持

| 标签                                                                                  | 描述                               |
| :------------------------------------------------------------------------------------ | :--------------------------------- |
| [`indent.txt`](https://yianwillis.github.io/vimcdoc/doc/indent.html#indent.txt)       | C 及其它语言的自动缩进             |
| [`syntax.txt`](https://yianwillis.github.io/vimcdoc/doc/syntax.html#syntax.txt)       | 语法高亮                           |
| [`textprop.txt`](https://yianwillis.github.io/vimcdoc/doc/textprop.html#textprop.txt) | 为文本附加属性，用于高亮和其它目的 |
| [`filetype.txt`](https://yianwillis.github.io/vimcdoc/doc/filetype.html#filetype.txt) | 对某一类型文件的专有设定           |
| [`quickfix.txt`](https://yianwillis.github.io/vimcdoc/doc/quickfix.html#quickfix.txt) | 支持快速 编辑-编译-修正 循环的命令 |
| [`ft_ada.txt`](https://yianwillis.github.io/vimcdoc/doc/ft_ada.html#ft_ada.txt)       | Ada (编程语言) 支持                |
| [`ft_rust.txt`](https://yianwillis.github.io/vimcdoc/doc/ft_rust.html#ft_rust.txt)    | Rust 文件类型支持                  |
| [`ft_sql.txt`](https://yianwillis.github.io/vimcdoc/doc/ft_sql.html#ft_sql.txt)       | SQL 文件类型插件相关               |

#### 语言支持

| 标签                                                                                  | 描述               |
| :------------------------------------------------------------------------------------ | :----------------- |
| [`digraph.txt`](https://yianwillis.github.io/vimcdoc/doc/digraph.html#digraph.txt)    | 可用的二合字母清单 |
| [`mbyte.txt`](https://yianwillis.github.io/vimcdoc/doc/mbyte.html#mbyte.txt)          | 多字节文本支持     |
| [`mlang.txt`](https://yianwillis.github.io/vimcdoc/doc/mlang.html#mlang.txt)          | 非英语语言支持     |
| [`rileft.txt`](https://yianwillis.github.io/vimcdoc/doc/rileft.html#rileft.txt)       | 从右向左的编辑模式 |
| [`arabic.txt`](https://yianwillis.github.io/vimcdoc/doc/arabic.html#arabic.txt)       | 阿拉伯语支持及编辑 |
| [`farsi.txt`](https://yianwillis.github.io/vimcdoc/doc/farsi.html#farsi.txt)          | 波斯语编辑         |
| [`hebrew.txt`](https://yianwillis.github.io/vimcdoc/doc/hebrew.html#hebrew.txt)       | 希伯来语支持及编辑 |
| [`russian.txt`](https://yianwillis.github.io/vimcdoc/doc/russian.html#russian.txt)    | 俄罗斯语支持及编辑 |
| [`hangulin.txt`](https://yianwillis.github.io/vimcdoc/doc/hangulin.html#hangulin.txt) | 韩语输入模式       |

#### GUI

| 标签                                                                               | 描述               |
| :--------------------------------------------------------------------------------- | :----------------- |
| [`gui.txt`](https://yianwillis.github.io/vimcdoc/doc/gui.html#gui.txt)             | 图形用户界面 (GUI) |
| [`gui_w32.txt`](https://yianwillis.github.io/vimcdoc/doc/gui_w32.html#gui_w32.txt) | Win32 GUI          |
| [`gui_x11.txt`](https://yianwillis.github.io/vimcdoc/doc/gui_x11.html#gui_x11.txt) | X11 GUI            |

#### 各种接口

| 标签                                                                                  | 描述                    |
| :------------------------------------------------------------------------------------ | :---------------------- |
| [`if_cscop.txt`](https://yianwillis.github.io/vimcdoc/doc/if_cscop.html#if_cscop.txt) | 联用 cscope 与 Vim      |
| [`if_lua.txt`](https://yianwillis.github.io/vimcdoc/doc/if_lua.html#if_lua.txt)       | Lua 接口                |
| [`if_mzsch.txt`](https://yianwillis.github.io/vimcdoc/doc/if_mzsch.html#if_mzsch.txt) | MzScheme 接口           |
| [`if_perl.txt`](https://yianwillis.github.io/vimcdoc/doc/if_perl.html#if_perl.txt)    | Perl 接口               |
| [`if_pyth.txt`](https://yianwillis.github.io/vimcdoc/doc/if_pyth.html#if_pyth.txt)    | Python 接口             |
| [`if_tcl.txt`](https://yianwillis.github.io/vimcdoc/doc/if_tcl.html#if_tcl.txt)       | Tcl 接口                |
| [`if_ole.txt`](https://yianwillis.github.io/vimcdoc/doc/if_ole.html#if_ole.txt)       | Win32 下的 OLE 接口     |
| [`if_ruby.txt`](https://yianwillis.github.io/vimcdoc/doc/if_ruby.html#if_ruby.txt)    | Ruby 接口               |
| [`debugger.txt`](https://yianwillis.github.io/vimcdoc/doc/debugger.html#debugger.txt) | 与调试程序的接口        |
| [`netbeans.txt`](https://yianwillis.github.io/vimcdoc/doc/netbeans.html#netbeans.txt) | NetBeans 外部编辑器接口 |
| [`sign.txt`](https://yianwillis.github.io/vimcdoc/doc/sign.html#sign.txt)             | 调试标号                |

#### 版本

| 标签                                                                                  | 描述                      |
| :------------------------------------------------------------------------------------ | :------------------------ |
| [`vi_diff.txt`](https://yianwillis.github.io/vimcdoc/doc/vi_diff.html#vi_diff.txt)    | Vim 和 Vi 之间的主要区别  |
| [`version4.txt`](https://yianwillis.github.io/vimcdoc/doc/version4.html#version4.txt) | Vim 3.0 和 4.x 版本的区别 |
| [`version5.txt`](https://yianwillis.github.io/vimcdoc/doc/version5.html#version5.txt) | Vim 4.6 和 5.x 版本的区别 |
| [`version6.txt`](https://yianwillis.github.io/vimcdoc/doc/version6.html#version6.txt) | Vim 5.7 和 6.x 版本的区别 |
| [`version7.txt`](https://yianwillis.github.io/vimcdoc/doc/version7.html#version7.txt) | Vim 6.4 和 7.x 版本的区别 |
| [`version8.txt`](https://yianwillis.github.io/vimcdoc/doc/version8.html#version8.txt) | Vim 7.4 和 8.x 版本的区别 |

#### 特定系统相关

（[`sys-file-list`](https://yianwillis.github.io/vimcdoc/doc/help.html#sys-file-list)）

| 标签                                                                                  | 描述                                     |
| :------------------------------------------------------------------------------------ | :--------------------------------------- |
| [`os_390.txt`](https://yianwillis.github.io/vimcdoc/doc/os_390.html#os_390.txt)       | OS/390 Unix                              |
| [`os_amiga.txt`](https://yianwillis.github.io/vimcdoc/doc/os_amiga.html#os_amiga.txt) | Amiga                                    |
| [`os_beos.txt`](https://yianwillis.github.io/vimcdoc/doc/os_beos.html#os_beos.txt)    | BeOS 和 BeBox                            |
| [`os_dos.txt`](https://yianwillis.github.io/vimcdoc/doc/os_dos.html#os_dos.txt)       | MS-DOS 和 MS-Windows 通用的条目          |
| [`os_haiku.txt`](https://yianwillis.github.io/vimcdoc/doc/os_haiku.html#os_haiku.txt) | Haiku                                    |
| [`os_mac.txt`](https://yianwillis.github.io/vimcdoc/doc/os_mac.html#os_mac.txt)       | Macintosh                                |
| [`os_mint.txt`](https://yianwillis.github.io/vimcdoc/doc/os_mint.html#os_mint.txt)    | Atari MiNT                               |
| [`os_msdos.txt`](https://yianwillis.github.io/vimcdoc/doc/os_msdos.html#os_msdos.txt) | MS-DOS (纯 DOS 及 Windows 内的 DOS 窗口) |
| [`os_os2.txt`](https://yianwillis.github.io/vimcdoc/doc/os_os2.html#os_os2.txt)       | OS/2                                     |
| [`os_qnx.txt`](https://yianwillis.github.io/vimcdoc/doc/os_qnx.html#os_qnx.txt)       | QNX                                      |
| [`os_risc.txt`](https://yianwillis.github.io/vimcdoc/doc/os_risc.html#os_risc.txt)    | RISC-OS                                  |
| [`os_unix.txt`](https://yianwillis.github.io/vimcdoc/doc/os_unix.html#os_unix.txt)    | Unix                                     |
| [`os_vms.txt`](https://yianwillis.github.io/vimcdoc/doc/os_vms.html#os_vms.txt)       | VMS                                      |
| [`os_win32.txt`](https://yianwillis.github.io/vimcdoc/doc/os_win32.html#os_win32.txt) | MS-Windows                               |

#### 标准插件

（[`standard-plugin-list`](https://yianwillis.github.io/vimcdoc/doc/help.html#standard-plugin-list)）

| 标签                                                                                              | 描述                            |
| :------------------------------------------------------------------------------------------------ | :------------------------------ |
| [`pi_getscript.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_getscript.html#pi_getscript.txt) | 下载 Vim 脚本的最新版本         |
| [`pi_gzip.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_gzip.html#pi_gzip.txt)                | 读写压缩过的文件                |
| [`pi_logipat.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_logipat.html#pi_logipat.txt)       | 模式的逻辑操作符                |
| [`pi_netrw.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_netrw.html#pi_netrw.txt)             | 通过网络读写文件                |
| [`pi_paren.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_paren.html#pi_paren.txt)             | 高亮匹配括号                    |
| [`pi_spec.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_spec.html#pi_spec.txt)                | 用于 rpm 规格文件的文件类型插件 |
| [`pi_tar.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_tar.html#pi_tar.txt)                   | Tar 文件探索器                  |
| [`pi_vimball.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_vimball.html#pi_vimball.txt)       | 创建自安装的 Vim 脚本           |
| [`pi_zip.txt`](https://yianwillis.github.io/vimcdoc/doc/pi_zip.html#pi_zip.txt)                   | Zip 归档探索器                  |

#### 本地附加文档

略。

<!----------------------------------------------------------------------------->

[Vim]:      https://www.vim.org/
[vim-plug]: https://github.com/junegunn/vim-plug
[Vundle]:   https://github.com/VundleVim/Vundle.vim

*[PaaS]: Platform as a Service
*[Vim]:  Vi IMproved

<!-- vim: set ts=4 et: -->
