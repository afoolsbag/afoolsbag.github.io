# Vim

[Vim] 是一款高度可配置的文本编辑器，它的建立使创建和更改任何类型的文本变得非常有效。

参见：

*   [Vim Awesome](https://vimawesome.com/)
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

0.  安装 [vim-plug]

    ``` ps1con
    PS $env:USERPROFILE> Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
                         New-Item $HOME\vimfiles\autoload\plug.vim -Force
    PS abbr.           > iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
                         ni $HOME\vimfiles\autoload\plug.vim -f
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

0.  通过 Vundle 安装插件

    ``` doscon
    %USERPROFILE%> vim
    ```

    ``` vim
    :PluginInstall
    ```
-->

## 我偏爱的 `vimrc`

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
Plug 'altercation/vim-colors-solarized'  " 主题
Plug 'airblade/vim-gitgutter'            " 文本内 Git 变更呈现
Plug 'flazz/vim-colorschemes'            " 主题包
Plug 'godlygeek/tabular'                 " 文本对齐
Plug 'junegunn/goyo.vim'                 " 黑屋子模式
Plug 'junegunn/limelight.vim'            " 焦点外虚化
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

参见：

*   [VundleVim/Vundle.vim: Vundle, the plug-in manager for Vim § Quick Start](https://github.com/VundleVim/Vundle.vim#quick-start)
*   [Vundle for Windows · VundleVim/Vundle.vim Wiki § Vundle on Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows#vundle-on-windows)

## Vim 备忘

该备忘基于 Vim 用户手册，可视作 Vim 用户手册的阅读笔记。

### ++f1++ 帮助

| 效果         | 行为                   |
| :----------- | :--------------------- |
| 打开帮助窗口 | `:h[elp] [<主题>]`     |
| 跳转到主题   | ++ctrl+bracket-right++ |
| 跳回         | ++ctrl+o++             |
| 关闭帮助窗口 | `:q[uit]`              |
| -            |
| 主帮助文件   | ++f1++<br>`:h[elp]`    |
| 用户手册目录 | `:h[elp] usr_toc`      |
| 全屏帮助窗口 | `:on[ly]`              |

### `usr_02` Vim 初步

#### `02.2` 插入文本

``` text
  :
 gI| I|^a   Bi|Ba        gEi|gEa     Wi|Wa         Ei|Ea   g_i|g_a
O :|  |       |             |          |             |        |
  :   example example-example     █    example-example example.  \n
o :|                 /      |     |    |     |                  |
  :|0a            bi/ba  gei|gea i|a wi|wa ei|ea              $i|A
  :
```

### `usr_03` 移动

|     左     |     下     |     上     |    右     |
| :--------: | :--------: | :--------: | :-------: |
|  ++'h'++   |  ++'j'++   |  ++'k'++   |  ++'l'++  |
|  ++left++  |  ++down++  |   ++up++   | ++right++ |
| ++ctrl+h++ | ++ctrl+j++ |
|  ++bksp++  |            |            | ++space++ |
|            | ++ctrl+n++ | ++ctrl+p++ |           |

#### `03.1` 词移动

|  文本对象  |             上一个对象头部              |           上一个对象尾部           |            下一个对象头部            |           下一个对象尾部            |
| :--------: | :-------------------------------------: | :--------------------------------: | :----------------------------------: | :---------------------------------: |
|    单词    | ++'b'++<br>++shift+left++<br>(backward) |        ++'g'++ ++'e'++<br>         | ++'w'++<br>++shift+right++<br>(word) |          ++'e'++<br>(end)           |
|    字串    | ++'B'++<br>++ctrl+left++<br>(Backward)  |        ++'g'++ ++'E'++<br>         | ++'W'++<br>++ctrl+right++<br>(WORD)  |          ++'E'++<br>(End)           |
|    句子    |                 ++'('++                 |                                    |               ++')'++                |
|    段落    |             ++brace-left++              |                                    |           ++brace-right++            |
|    小节    |    ++bracket-left++ ++bracket-left++    | ++bracket-left++ ++bracket-right++ |  ++bracket-right++ ++bracket-left++  | ++bracket-right++ ++bracket-right++ |
|   圆括号   |        ++bracket-left++ ++'('++         |                                    |                                      |      ++bracket-right++ ++')'++      |
|   花括号   |     ++bracket-left++ ++brace-left++     |                                    |                                      |  ++bracket-right++ ++brace-right++  |
|    方法    |        ++bracket-left++ ++'m'++         |      ++bracket-left++ ++'M'++      |      ++bracket-right++ ++'m'++       |      ++bracket-right++ ++'M'++      |
| 预处理分支 |        ++bracket-left++ ++'#'++         |                                    |                                      |      ++bracket-right++ ++'#'++      |
|   块注释   |        ++bracket-left++ ++'*'++         |                                    |                                      |      ++bracket-right++ ++'*'++      |

#### `03.2` 移动到行首或行尾

|        |       行首        |              非空行首               |       指定列       |        非空行尾        |        行尾        |
| :----: | :---------------: | :---------------------------------: | :----------------: | :--------------------: | :----------------: |
| 上一行 |                   |              ++minus++              |                    |
|  本行  | ++0++<br>++home++ |               ++'^'++               | ++"列号"++ ++bar++ | ++'g'++ ++underscore++ | ++'$'++<br>++end++ |
| 下一行 |                   | ++plus++<br>++ctrl+m++<br>++enter++ |                    |

#### `03.3` 移动到一个指定的字符

|           向左寻找           |           向左直到           |           向右直到           |           向右寻找           |
| :--------------------------: | :--------------------------: | :--------------------------: | :--------------------------: |
| ++'F'++ ++"字符"++<br>(Find) | ++'T'++ ++"字符"++<br>(Till) | ++'t'++ ++"字符"++<br>(till) | ++'f'++ ++"字符"++<br>(find) |

| 反向重复  |   同向重复    |
| :-------: | :-----------: |
| ++comma++ | ++semicolon++ |

#### `03.4` 括号匹配

++"%"++

#### `03.5` 移动到指定的行

|   目的行   |            行为            |       行为2        |
| :--------: | :------------------------: | :----------------: |
|    首行    |      ++'g'++ ++'g'++       |   ++ctrl+home++    |
| 按行号指定 | ++"行号"++ ++'g'++ ++'g'++ | ++"行号"++ ++'G'++ |
| 按进度指定 |     ++"进度"++ ++'%'++     |
|    尾行    |          ++'G'++           |    ++ctrl+end++    |

| 页内目的行 |  行为   |   助记   |
| :--------: | :-----: | :------: |
|  本页顶部  | ++'H'++ |  (High)  |
|  本页中部  | ++'M'++ | (Middle) |
|  本页底部  | ++'L'++ |  (Low)   |

#### `03.6` 确定当前位置

++ctrl+g++

#### `03.7` 滚屏

|   视口   |           行为            |   行为 2    |  行为 3   |
| :------: | :-----------------------: | :---------: | :-------: |
| 上移一页 | ++ctrl+b++<br>(Backwards) | ++shift+u++ | ++pg-up++ |
| 上移半页 |  ++ctrl+u++<br>(Upwards)  |
| 上移一行 |        ++ctrl+y++         |
| 下移一行 |   ++ctrl+e++<br>(Extra)   |
| 下移半页 | ++ctrl+d++<br>(Downwards) |
| 下移一页 | ++ctrl+f++<br>(Forwards)  | ++shift+d++ | ++pg-dn++ |

|    效果    |            行为             |    并左移到句首    |
| :--------: | :-------------------------: | :----------------: |
| 当前行居上 |  ++'z'++ ++'t'++<br>(top)   | ++'z'++ ++enter++  |
| 当前行居中 |       ++'z'++ ++'z'++       | ++'z'++ ++period++ |
| 当前行居下 | ++'z'++ ++'b'++<br>(bottom) | ++'z'++ ++minus++  |

#### `03.8` 简单查找

|  逆向查找   |  顺向查找   |
| :---------: | :---------: |
| `?<字符串>` | `/<字符串>` |

|          | 逆向查找光标下单词 | 顺向查找光标下单词 |
| :------: | :----------------: | :----------------: |
| 全字匹配 |      ++'#'++       |      ++'*'++       |
| 部分匹配 |  ++'g'++ ++'#'++   |  ++'#'++ ++'*'++   |

| 反向重复 | 同向重复 |
| :------: | :------: |
| ++'N'++  | ++'n'++  |

#### `03.10` 使用标记

|     效果     |         缓冲区标记         |          全局标记          |
| :----------: | :------------------------: | :------------------------: |
|   设定标记   |     ++'m'++ ++"a-z"++      |     ++'m'++ ++"A-Z"++      |
|  跳转到标记  |    ++grave++ ++"a-z"++     |    ++grave++ ++"A-Z"++     |
| ～的非空行首 | ++single-quote++ ++"a-z"++ | ++single-quote++ ++"A-Z"++ |
|  列出标记表  |          `:marks`          |

| 列出跳转表 |   跳转到更早的标记    |   跳转到上一标记    |   跳转到更新的标记    |
| :--------: | :-------------------: | :-----------------: | :-------------------: |
| `:ju[mps]` | ++ctrl+o++<br>(Older) | ++grave++ ++grave++ | ++ctrl+i++<br>++tab++ |

### `usr_04` 做小改动

|       操作符＼动作       |            整行            | ++'h'++ | ++'l'++ | ++'$'++ |
| :----------------------: | :------------------------: | :-----: | :-----: | :-----: |
| 删除 ++'d'++<br>(delete) |      ++'d'++ ++'d'++       | ++'X'++ | ++'x'++ | ++'D'++ |
| 修改 ++'c'++<br>(change) | ++'c'++ ++'c'++<br>++'S'++ |         | ++'s'++ | ++'C'++ |
|  抽出 ++'y'++<br>(yank)  | ++'y'++ ++'y'++<br>++'Y'++ |

| 效果  |  行为   |   助记    |
| :---: | :-----: | :-------: |
| 插入  | ++'i'++ | (insert)  |
| 附加  | ++'a'++ | (append)  |
| 替换  | ++'r'++ | (replace) |
| 放置  | ++'p'++ |   (put)   |
| 放置  | ++'P'++ |   (Put)   |

#### `04.3` 重复一个修改

++period++

#### `04.4` 可视模式

|   效果   |    行为    |   助记   |
| :------: | :--------: | :------: |
| 可视模式 |  ++'v'++   | (visual) |
| 按行选择 |  ++'V'++   | (Visual) |
| 列块选择 | ++ctrl+v++ |          |
|  水平端  |  ++'o'++   | (other)  |
|  对角端  |  ++'O'++   | (Other)  |

#### `04.7` 使用剪贴板

| 操作                            | 效果                 |
| :------------------------------ | :------------------- |
| `:reg[isters]`                  | 列出编号和命名寄存器 |
| ++double-quote++ ++"0-9"++      | 编号寄存器           |
| ++double-quote++ ++"a-z"++      | 命名寄存器           |
| ++double-quote++ ++'*'++        | 主选择区寄存器       |
| ++double-quote++ ++plus++       | 剪切板寄存器         |
| ++double-quote++ ++tilde++      | 拖放寄存器           |
| ++double-quote++ ++underscore++ | 黑洞寄存器           |

#### `04.8` 文本对象

|                  |                             (inner 内含)                             |                               (a 一个)                               |
| :--------------: | :------------------------------------------------------------------: | :------------------------------------------------------------------: |
|   (word 单词)    |                           ++'i'++ ++'w'++                            |                           ++'a'++ ++'w'++                            |
|   (WORD 字串)    |                           ++'i'++ ++'W'++                            |                           ++'a'++ ++'W'++                            |
| (sentence 句子)  |                           ++'i'++ ++'s'++                            |                           ++'a'++ ++'s'++                            |
| (paragraph 段落) |                           ++'i'++ ++'p'++                            |                           ++'a'++ ++'p'++                            |
|  (block 圆括号)  |        ++'i'++ ++'b'++<br>++'i'++ ++'('++<br>++'i'++ ++')'++         |        ++'a'++ ++'b'++<br>++'a'++ ++'('++<br>++'a'++ ++')'++         |
|     (方括号)     |        ++'i'++ ++bracket-left++<br>++'i'++ ++bracket-right++         |        ++'a'++ ++bracket-left++<br>++'a'++ ++bracket-right++         |
|  (Block 花括号)  | ++'i'++ ++'B'++<br>++'i'++ ++brace-left++<br>++'i'++ ++brace-right++ | ++'a'++ ++'B'++<br>++'a'++ ++brace-left++<br>++'a'++ ++brace-right++ |
|     (尖括号)     |               ++'i'++ ++less++<br>++'i'++ ++greater++                |               ++'a'++ ++less++<br>++'a'++ ++greater++                |
|    (tag 标签)    |                           ++'i'++ ++'t'++                            |                           ++'a'++ ++'t'++                            |
|  (双引号字符串)  |                       ++'i'++ ++double-quote++                       |                       ++'a'++ ++double-quote++                       |
|  (单引号字符串)  |                       ++'i'++ ++single-quote++                       |                       ++'a'++ ++single-quote++                       |
|  (反引号字符串)  |                          ++'i'++ ++grave++                           |                          ++'a'++ ++grave++                           |

#### `04.9` 替换模式

++'R'++

<!----------------------------------------------------------------------------->

[Vim]:      https://www.vim.org/
[vim-plug]: https://github.com/junegunn/vim-plug
[Vundle]:   https://github.com/VundleVim/Vundle.vim

*[PaaS]: Platform as a Service
*[Vim]:  Vi IMproved

<!-- vim: set ts=4 et: -->
