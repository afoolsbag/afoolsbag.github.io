# Vim

[Vim] 是一款高度可配置的文本编辑器，它的建立使创建和更改任何类型的文本变得非常有效。

参见：

*   [Vim Cheat Sheet](https://vim.rtorr.com/lang/zh_cn)
*   [Vim Chinese Documentation](http://vimcdoc.sourceforge.net/)
    *   帮助总览 [VIM: help](http://vimcdoc.sourceforge.net/doc/help.html)
    *   快速参考 [VIM: quickref](http://vimcdoc.sourceforge.net/doc/quickref.html)
    *   命令索引 [VIM: index](http://vimcdoc.sourceforge.net/doc/index.html)
    *   函数列表 [VIM: eval § functions](http://vimcdoc.sourceforge.net/doc/eval.html#functions)
    *   选项列表 [VIM: quickref § option-list](http://vimcdoc.sourceforge.net/doc/quickref.html#option-list)
    *   用户手册 [VIM: usr_toc](http://vimcdoc.sourceforge.net/doc/usr_toc.html)
    *   参考手册 [VIM: help § reference_toc](http://vimcdoc.sourceforge.net/doc/help.html#reference_toc)
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

0.  安装 [Vundle]

    （Vundle 需要 Git 和 curl）

    ``` doscon
    %USERPROFILE%> git clone https://github.com/VundleVim/Vundle.vim.git %USERPROFILE%\vimfiles\bundle\Vundle.vim
    ```

0.  安装插件

    ``` doscon
    %USERPROFILE%> vim
    ```

    ``` vim
    :PluginInstall
    ```

## 我偏爱的 `vimrc`

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
Plugin 'vim-airline/vim-airline'
"Plugin 'Valloric/YouCompleteMe'
" 偏爱的插件列表结束。

call vundle#end()
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 默认配置
source $VIMRUNTIME/defaults.vim

" 编码
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
```

参见：

*   [VundleVim/Vundle.vim: Vundle, the plug-in manager for Vim § Quick Start](https://github.com/VundleVim/Vundle.vim#quick-start)
*   [Vundle for Windows · VundleVim/Vundle.vim Wiki § Vundle on Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows#vundle-on-windows)

## 速查

### 移动光标

``` text
      1       10        20        30        40        50        60        70        80
     .|________|_________|_________|_________|_________|_________|_________|_________|.
   1 |    example-word\n                                                              |
   2 |    \                                                                           |
   3 |     gg                                                                         |
     '                                                                                '    ^  CTRL-B
     :                                                                                :   [ ] CTRL-U
     .________________________________________________________________________________.       CTRL-Y
N+ 1 |    example-word\n                                                :marks        |   <-o
N+ 2 |    \                                                             m{a-z} `{a-z} |    ^
N+ 3 |     H                                                            m{A-Z} `{A-Z} |    |
N+ 4 |                                                                         ``     |    |
N+ 5 |                                                                  :ju[mps]      |    |
N+ 6 |                                                                  CTRL-O CTRL-I |    |  zt
N+ 7 |                                                                                |    |
N+ 8 |                     F<m>             40|                                       |    |
N+ 9 |                     |T<m>             |                                        |    |
N+10 |    ^             B  ||      gE                   W          E             g_  $|    |
N+11 |    |             |  ||      |    -    j          |          |             |   ||    |
N+12 |    example-word  example-word       h █ l        example-word  example-word    \n   <-o zz
N+13 ||   \                     |  |    +    k          | ||  |                       |    |
N+14 |0    M                    b  ge                   w ||  e                       |    |
N+15 |                                                    |f<m>                       |    |
N+16 |                                                    t<m>                        |    |
N+17 |                                                                                |    |
N+18 |                                 ,  F T t f  ;                                  |    |  zb
N+19 |                                                                                |    |
N+20 |                                   N  ? /  n                      :help         |    |
N+21 |                                      # *                                       |    |
N+22 |     L                                                            :tags         |    |
N+23 |    /                                                             CTRL-] :tag   |    v
N+24 |    example-word\n                                                CTRL-T :po[p] |   <-o
     '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'       CTRL-E
     :                                                                                :   [ ] CTRL-D
     .                                                                                .    v  CTRL-F
  -3 |     G                                                                          |
  -2 |    /                                                                           |
  -1 |    example-word\n                                                              |
     '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
```

### 普通模式到插入模式

``` text
      1       10        20        30        40        50        60        70        80
     .|________|_________|_________|_________|_________|_________|_________|_________|.
N+1  |                                                                                |
N+2 gI|      I|^a          Bi|Ba     gEi|gEa     Wi|Wa      Ei|Ea         g_i|g_a  $i|A
N+3  ||   O-> |              |          |          |          |              |       ||
N+4  |        example-word   example-word    █     example-word   example-word        \n
N+5  ||   o->                        |  |    |     |     |                            |
N+6  ||0a                          bi|ba|   i|a  wi|wa ei|ea                          |
N+7  |                               gei|gea                                          |
N+8  |                                                                                |
```

### 移动文本

``` text
      1       10        20        30        40        50        60        70        80
     .|________|_________|_________|_________|_________|_________|_________|_________|.
N+ 1 |                                                                   :reg[isters] |
N+ 2 || dd ------------------------------------------------>|            "{0-9}       |
N+ 3 |                                       | D ---------->| Delete     "{a-z}       |
N+ 4 |                                      Xx                           "*   primary |
N+ 5 |                                      ||                           "+ clipboard |
N+ 6 |    The The quick brown fox jumps over █he lazy dog.   \n          "~      drop |
N+ 7 |                                       |                                        |
N+ 8 |                                      P|p               Paste          inner a  |
N+ 9 || yy, Y --------------------------------------------->| Yank         word iw aw |
N+10 |                                                                     WORD iW aW |
N+11 |                                                                 sentence is as |
N+12 |       v |          s-----------------------------| o           paragraph ip ap |
N+13 |         |-----------------------------e          | s<->e         (block) ib ab |
N+14 |                                                                    [...] i] a] |
N+15 |       V |s---------------------------------------| o             {Block} iB aB |
N+16 |         |e---------------------------------------| s<->e           <...> i> a> |
N+17 |                                                           <tag>...</tag> it at |
N+18 |  CTRL-V |          s------------------s'         | o     O         '...' i' a' |
N+19 |         |          -------------------e          | s<->e s<->s'    "..." i" a" |
N+20 |                                                                    `...` i` a` |
     '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
```

### 修改和替换文本

``` text
      1       10        20        30        40        50        60        70        80
     .|________|_________|_________|_________|_________|_________|_________|_________|.
N+ 1 |                                                                 switch case:   |
N+ 2 || cc, S --------------------------------------------->|            ~ g~{motion} |
N+ 3 |                                       | c$, C ------>| Change   lowercase:     |
N+ 4 |                                       s                             gu{motion} |
N+ 5 |                                       |                         uppercase:     |
N+ 6 |    The The quick brown fox jumps over █he lazy dog.   \N            gU{motion} |
N+ 7 |                                       |                         ROT13:         |
N+ 8 | filter:                               r                Replace      g?{motion} |
N+ 9 |   == ={motion}                                                  adding:        |
N+10 | shift:                                                            CTRL-A       |
N+11 |   << <{motion}                                                  subtracting:   |
N+12 |   >> >{motion}                                                    CTRL-X       |
N+13 |                                                                                |
```

### 重复改动

*   <kbd>.</kbd> 重复改动
*   <kbd>q</kbd><kbd>{register}</kbd> 开始录制宏
*   <kbd>q</kbd> 结束录制宏
*   <kbd>@</kbd><kbd>{register}</kbd> 执行宏
*   <kbd>@</kbd><kbd>@</kbd> 重复执行宏

## 常用命令

### 替代

``` vim
:[range]s[ubstitute]/{pattern}/{string}/[flags] [count]

" range ::= {line}
"         | {line-start}, {line-stop-after-cursor}
"         | {line-start}; {line-stop-after-start}
"         | ...
"
" line* ::= {number}  行号
"         | .         当前行
"         | $         文件的最后一行
"         | %         全文件，等同于 1,$
"         | ...
"
" flags :+= c         确认每个替代
"         | e         忽略错误
"         | g         对所有匹配，而不是首个匹配进行替代
"         | ...
"         | n         报告匹配次数，而不真的替代
"         | ...

" 在整个文件替换，逐个确认
:%s/{pattern}/{string}/cg
```

### 设置编码

``` vim
:set encoding=utf-8
"    end=utf-8

:set fileencodings=utf-8
"    fencs=utf-8

:set termencoding=utf-8
"    tenc=utf-8
```

### 设置行尾序列

``` vim
:set fileformat={dos|unix|mac}
"    ff={dos|unix|mac}
```

<!----------------------------------------------------------------------------->

[Vim]:    https://www.vim.org/
[Vundle]: https://github.com/VundleVim/Vundle.vim

*[PaaS]: Platform as a Service
