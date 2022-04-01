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

### :material-ubuntu: Ubuntu

1.  安装 Vim

    ``` console
    [sudoer@host ~]$ sudo apt install vim
    ```

0.  编辑 `vimrc`

    ``` console
    [sudoer@host ~]$ vim ~/.vimrc
    ```

0.  安装 [vim-plug]

    ``` console
    [sudoer@host ~]$ curl --fail --location --output ~/.vim/autoload/plug.vim --create-dirs \
                     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    [abbr.        ]$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
                     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

0.  通过 vim-plug 安装插件

    ``` console
    [sudoer@host ~]$ vim
    ```

    ``` vim
    :PlugInstall
    ```

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
Plug 'honza/vim-snippets'                " 代码片段
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

| [help.txt]                  |                                    | 文档                       | 主题                  |
| :-------------------------- | :--------------------------------- | :------------------------- | :-------------------- |
| [doc-file-list]             |
| 基础                        |                                    | [quickref]<br>快速参考指南 | [Q_ma]<br>位置标记    |
|                             |                                    |                            | [Q_ta]<br>标签        |
|                             |                                    |                            | [Q_sc]<br>滚屏        |
|                             |                                    |                            | [Q_to]<br>文本对象    |
|                             |                                    |                            | [Q_re]<br>重复        |
|                             |                                    |                            | [Q_ur]<br>撤销和重做  |
|                             |                                    |                            | [Q_wq]<br>写入和退出  |
|                             |                                    |                            | [Q_wi]<br>多窗口      |
| 用户手册                    |                                    | [usr_toc.txt]<br>目录      |
|                             | 初步知识                           |
|                             | 高效地编辑                         |
|                             | 调节 Vim                           |
|                             | 让 Vim 工作                        |
| 参考手册<br>[reference_toc] | 一般主题                           |
|                             | 基本编辑                           | [change.txt]<br>删除和修改 | [registers]<br>寄存器 |
|                             | 高级编辑                           | [options.txt]<br>选项      | [modeline]<br>模式行  |
|                             |                                    | [tabpage.txt]<br>标签页    | [tabpage]             |
|                             | 特殊问题                           |
|                             | 编程语言支持                       |
|                             | 语言支持                           |
|                             | GUI                                |
|                             | 各种接口                           |
|                             | 版本                               |
|                             | 特定系统相关<br>[sys-file-list]    |
|                             | 标准插件<br>[standard-plugin-list] |
|                             | 本地附加文档                       |

<!----------------------------------------------------------------------------->

[help.txt]:             https://yianwillis.github.io/vimcdoc/doc/help.html#help.txt
[doc-file-list]:        https://yianwillis.github.io/vimcdoc/doc/help.html#doc-file-list
[quickref]:             https://yianwillis.github.io/vimcdoc/doc/quickref.html#quickref
[Q_ma]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ma
[Q_ta]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ta
[Q_sc]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_sc
[Q_to]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_to
[Q_re]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_re
[Q_ur]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_ur
[Q_wq]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_wq
[Q_wi]:                 https://yianwillis.github.io/vimcdoc/doc/quickref.html#Q_wi
[usr_toc.txt]:          https://yianwillis.github.io/vimcdoc/doc/usr_toc.html#usr_toc.txt
[reference_toc]:        https://yianwillis.github.io/vimcdoc/doc/help.html#reference_toc
[change.txt]:           https://yianwillis.github.io/vimcdoc/doc/change.html#change.txt
[registers]:            https://yianwillis.github.io/vimcdoc/doc/change.html#registers
[options.txt]:          https://yianwillis.github.io/vimcdoc/doc/options.html#options.txt
[modeline]:             https://yianwillis.github.io/vimcdoc/doc/options.html#modeline
[tabpage.txt]:          https://yianwillis.github.io/vimcdoc/doc/tabpage.html#tabpage.txt
[tabpage]:              https://yianwillis.github.io/vimcdoc/doc/tabpage.html#tabpage
[sys-file-list]:        https://yianwillis.github.io/vimcdoc/doc/help.html#sys-file-list
[standard-plugin-list]: https://yianwillis.github.io/vimcdoc/doc/help.html#standard-plugin-list

<!-- vim: set ts=4 et: -->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
