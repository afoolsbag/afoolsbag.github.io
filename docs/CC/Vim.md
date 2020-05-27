# 文本编辑器 Vim

[*vi*](http://ex-vi.sourceforge.net/ "1976"),
[*Vim*](https://www.vim.org/ "1991-11-02"),
[*Cheat Sheet*](https://vim.rtorr.com/lang/zh_cn),
[*quickref*](http://vimcdoc.sourceforge.net/doc/quickref.html),
[*index*](http://vimcdoc.sourceforge.net/doc/index.html),
[*help*](http://vimcdoc.sourceforge.net/doc/help.html),
[*Chinese Documentation*](http://vimcdoc.sourceforge.net)

___
## 移动

```text
      1       10        20        30        40        50        60        70        80
     .:........:.........:.........:.........:.........:.........:.........:.........:.
   1 |    example-text                                                                |
   2 |    \                                                                           |
   3 |     gg                                                                         |    ^  CTRL-B
     :                                                                                :   [ ] CTRL-U
     :................................................................................:       CTRL-Y
N+ 1 |    example-text                                                  :marks        |   <-o
N+ 2 |    \                                                             m{a-z} `{a-z} |    ^
N+ 3 |     H                                                            m{A-Z} `{A-Z} |    |
N+ 4 |                                                                         ``     |    |
N+ 5 |                                                                  :ju[mps]      |    |
N+ 6 |                                                                  CTRL-O CTRL-I |    |  zt
N+ 7 |                                                                                |    |
N+ 8 |                     F<m>             40|                                       |    |
N+ 9 |                     |T<m>             |                                        |    |
N+10 |    ^             B  ||      gE                   W          E             $    |    |
N+11 |    |             |  ||      |    -    j          |          |             |    |    |
N+12 |    example-text  example-text       h   l        example-text  example-text\0  |   <-o zz
N+13 ||   \                     |  |    +    k          | ||  |                       |    |
N+14 |0    M                    b  ge                   w ||  e                       |    |
N+15 |                                                    |f<m>                       |    |
N+16 |                                                    t<m>                        |    |
N+17 |                                                                                |    |
N+18 |                                    , FTtf ;                                    |    |  zb
N+19 |                                                                                |    |
N+20 |                                     N ?/ n                                     |    |
N+21 |                                       #*                                       |    |
N+22 |     L                                                                          |    |
N+23 |    /                                                                           |    v
N+24 |    example-text                                                                |   <-o
     :'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''':       CTRL-E
     :                                                                                :   [ ] CTRL-D
  -3 |     G                                                                          |    v  CTRL-F
  -2 |    /                                                                           |
  -1 |    example-text                                                                |
     ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
```

















