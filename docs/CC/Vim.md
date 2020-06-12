# 文本编辑器 Vim

官网 <https://www.vim.org/>，Vim 始于 1991 年 11 月 02 日。

[*官方文档的中译本*](http://vimcdoc.sourceforge.net/)，
及其中的帮助总览 [*help*](http://vimcdoc.sourceforge.net/doc/help.html)、
快速参考 [*quickref*](http://vimcdoc.sourceforge.net/doc/quickref.html)、
命令索引 [*index*](http://vimcdoc.sourceforge.net/doc/index.html)、
函数列表 [*functions*](http://vimcdoc.sourceforge.net/doc/eval.html#functions)、
选项列表 [*option-list*](http://vimcdoc.sourceforge.net/doc/quickref.html#option-list)、
用户手册 [*usr_toc*](http://vimcdoc.sourceforge.net/doc/usr_toc.html)
和参考手册 [*reference_toc*](http://vimcdoc.sourceforge.net/doc/help.html#reference_toc)。

[*rtorr.com 上的 Vim 备忘单*](https://vim.rtorr.com/lang/zh_cn)。

vi 官网 <http://ex-vi.sourceforge.net/>，vi 始于 1976 年。

## 速查
---

### 移动光标

```text
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

### 从普通模式切换至插入模式

```text
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

```text
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

```text
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
