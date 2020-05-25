# 单人游戏修改器 Cheat Engine

适用于 Windows 操作系统的单人游戏修改器 CE（Cheat Engine），官网 <https://cheatengine.org/>。

Cheat Engine Wiki 上关于汇编的文档 <https://wiki.cheatengine.org/index.php?title=Assembler>。

___
## x86-64 架构的寄存器

Cheat Engine Wiki 上关于寄存器的文档 <https://wiki.cheatengine.org/index.php?title=Assembler#Registers>。

| 64:63-0   | 32:31-0      | 16:15-0 | 8:15-8 | 8:7-0  | term                | description |
|:---------:|:------------:|:-------:|:------:|:------:|:------------------- |:----------- |
| register- | extended-    | -hex    | -high  | -low   |                     |
| `RAX`     | `EAX`        | `AX`    | `AH`   | `AL`   | accumulator         | 累加器
| `RBX`     | `EBX`        | `BX`    | `BH`   | `BL`   | base index          | 数组的基址索引
| `RCX`     | `ECX`        | `CX`    | `CH`   | `CL`   | counter             | 循环和字符串的计数器
| `RDX`     | `EDX`        | `DX`    | `DH`   | `DL`   |                     | 累加器精度扩展
| register- | extended-    | -       | -      | -low   |                     |
| `RSI`     | `ESI`        | `SI`    |        | `SIL`  | source index        | 字符串操作的源索引
| `RSI`     | `ESI`        | `SI`    |        | `SIL`  | destination index   | 字符串操作的目的索引
| `RBP`     | `EBP`        | `BP`    |        | `BPL`  | base pointer        | 栈基指针
| `RSP`     | `ESP`        | `SP`    |        | `SPL`  | stack pointer       | 栈顶指针
| register- | -double-word | -word   | -      | -byte  |                     |
| `R8`      | `R8D`        | `R8W`   |        | `R8B`  |                     |
| `R9`      | `R9D`        | `R9W`   |        | `R9B`  |                     |
| `R10`     | `R10D`       | `R10W`  |        | `R10B` |                     |
| `R11`     | `R11D`       | `R11W`  |        | `R11B` |                     |
| `R12`     | `R12D`       | `R12W`  |        | `R12B` |                     |
| `R13`     | `R13D`       | `R13W`  |        | `R13B` |                     |
| `R14`     | `R14D`       | `R14W`  |        | `R14B` |                     |
| `R15`     | `R15D`       | `R15W`  |        | `R15B` |                     |
| register- | extended-    | -       | -      | -      |                     |
| `RIP`     | `EIP`        | `IP`    |        |        | instruction pointer | 指令指针
| -         | -            | -       | -      | -      |                     |
| `CS`      |              |         |        |        | code segment        | 代码段
| `SS`      |              |         |        |        | stack segment       | 栈段
| `DS`      |              |         |        |        | data segment        | 数据段
| `ES`      |              |         |        |        | extra segment       | 附加段
| `FS`      |              |         |        |        | extra segment #2    | 附加段 #2
| `GS`      |              |         |        |        | extra segment #3    | 附加段 #3

![https://wiki.cheatengine.org/index.php?title=Assembler#Structure](https://wiki.cheatengine.org/images/2/2c/Table_of_x86_Registers_svg.svg.png)

___
## x86-64 架构的指令

Cheat Engine Wiki 上关于指令的文档 <https://wiki.cheatengine.org/index.php?title=Assembler:Commands>。

| name      | term | description |
|:--------- |:---- |:----------- |
| `[`...`]` |      | 解引用，类似于 C 语言中的 `*` 操作符
| `MOV`     | move | [`move [size] <destination>, <source>`](https://wiki.cheatengine.org/index.php?title=Assembler:Commands:MOV)
