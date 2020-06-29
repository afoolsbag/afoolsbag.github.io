# 单人游戏修改器 Cheat Engine

适用于 Windows 操作系统的单人游戏修改器 CE（Cheat Engine），官网 <https://cheatengine.org/>。

Cheat Engine Wiki 上[*关于汇编的文档*](https://wiki.cheatengine.org/index.php?title=Assembler)。

## 安装 Cheat Engine
---

### 通过安装包安装

略。

### 通过 Scoop 安装

```ps1
PS $env:USERPROFILE> scoop install cheat-engine
```

### CE Share

*   <https://fearlessrevolution.com/ceshare/>

## x86-64 架构的寄存器
---

Cheat Engine Wiki 上[*关于寄存器的文档*](https://wiki.cheatengine.org/index.php?title=Assembler#Registers)。

| 64:63-0   | 32:31-0      | 16:15-0 | 8:15-8 | 8:7-0  | term                | description |
|:---------:|:------------:|:-------:|:------:|:------:|:------------------- |:----------- |
| register- | extended-    | -hex    | -high  | -low   | -                   | -
| `RAX`     | `EAX`        | `AX`    | `AH`   | `AL`   | accumulator         | 累加器
| `RBX`     | `EBX`        | `BX`    | `BH`   | `BL`   | base index          | 数组的基址索引
| `RCX`     | `ECX`        | `CX`    | `CH`   | `CL`   | counter             | 循环和字符串的计数器
| `RDX`     | `EDX`        | `DX`    | `DH`   | `DL`   |                     | 累加器精度扩展
| register- | extended-    | -       | -      | -low   | -                   | -
| `RSI`     | `ESI`        | `SI`    |        | `SIL`  | source index        | 字符串操作的源索引
| `RSI`     | `ESI`        | `SI`    |        | `SIL`  | destination index   | 字符串操作的目的索引
| `RBP`     | `EBP`        | `BP`    |        | `BPL`  | base pointer        | 栈基指针
| `RSP`     | `ESP`        | `SP`    |        | `SPL`  | stack pointer       | 栈顶指针
| register- | -double-word | -word   | -      | -byte  | -                   | -
| `R8`      | `R8D`        | `R8W`   |        | `R8B`  |                     |
| `R9`      | `R9D`        | `R9W`   |        | `R9B`  |                     |
| `R10`     | `R10D`       | `R10W`  |        | `R10B` |                     |
| `R11`     | `R11D`       | `R11W`  |        | `R11B` |                     |
| `R12`     | `R12D`       | `R12W`  |        | `R12B` |                     |
| `R13`     | `R13D`       | `R13W`  |        | `R13B` |                     |
| `R14`     | `R14D`       | `R14W`  |        | `R14B` |                     |
| `R15`     | `R15D`       | `R15W`  |        | `R15B` |                     |
| register- | extended-    | -       | -      | -      | -                   | -
| `RIP`     | `EIP`        | `IP`    |        |        | instruction pointer | 指令指针
| -         | -            | -       | -      | -      | -                   | -
| `CS`      |              |         |        |        | code segment        | 代码段
| `SS`      |              |         |        |        | stack segment       | 栈段
| `DS`      |              |         |        |        | data segment        | 数据段
| `ES`      |              |         |        |        | extra segment       | 附加段
| `FS`      |              |         |        |        | extra segment #2    | 附加段 #2
| `GS`      |              |         |        |        | extra segment #3    | 附加段 #3

![https://wiki.cheatengine.org/index.php?title=Assembler#Structure](https://wiki.cheatengine.org/images/2/2c/Table_of_x86_Registers_svg.svg.png)

## x86-64 架构的指令
---

Cheat Engine Wiki 上[*关于指令的文档*](https://wiki.cheatengine.org/index.php?title=Assembler:Commands)。

| name      | term     | brief |
|:--------- |:-------- |:----- |
| `[`...`]` |          | 解引用，类似于 C 语言中的 `*` 操作符
| `ADD`     | add      | [`add <destination>, <source>`](https://wiki.cheatengine.org/index.php?title=Assembler:Commands:ADD)
| `CMP`     | compare  | [`cmp <operand1>, <operand2>`](https://wiki.cheatengine.org/index.php?title=Assembler:Commands:CMP)
| `MOV`     | move     | [`move [size] <destination>, <source>`](https://wiki.cheatengine.org/index.php?title=Assembler:Commands:MOV)
| `SUB`     | subtract | [`sub <destination>, <source>`](https://wiki.cheatengine.org/index.php?title=Assembler:Commands:SUB)

## 官方教程笔记
---

### 附加到进程

Cheat Engine Wiki 上[*关于附加到进程的教程*](https://wiki.cheatengine.org/index.php?title=Tutorials:AttachToProcess)。

### 精确值扫描

Cheat Engine Wiki 上[*关于整型值查找的教程*](https://wiki.cheatengine.org/index.php?title=Tutorials:Finding_values:Integers)。

### 不知初值的扫描

略。

### 浮点值扫描

Cheat Engine Wiki 上[*关于浮点值查找的教程*](https://wiki.cheatengine.org/index.php?title=Tutorials:Finding_values:Floats)。

### 指令查找器

1.  【主界面】找到数据地址
2.  【主界面】右击展开上下文菜单，点击“Find out what writes to this address”按钮，弹出指令查找窗口（<kbd>Ctrl</kbd> + <kbd>F6</kbd>）
3.  【指令查找窗口】指令查找器将监视数据地址，并找出修改数据的指令地址
4.  【指令查找窗口】右击展开上下文菜单，点击“Replace with code that does nothing (NOP)”按钮，将指令替换为 `nop`
5.  【指令查找窗口】该地址的指令将不再生效

### 指针

1.  【主界面】找到数据地址
2.  【主界面】右击展开上下文菜单，点击“Find out what accesses this address”按钮，弹出指令查找窗口（<kbd>Ctrl</kbd> + <kbd>F5</kbd>）
3.  【指令查找窗口】指令查找器将监视数据地址，并找出访问数据的指令地址
4.  【指令查找窗口】点选找出的指令地址，查看汇编代码，找到可能的上级指针地址和偏移量
5.  【主界面】返回主界面，点击“Add Address Manually”按钮，手动添加地址

### 代码注入

1.  【主界面】找到数据地址
2.  【主界面】右击展开上下文菜单，点击“Find out what writes to this address”按钮，弹出指令查找窗口（<kbd>Ctrl</kbd> + <kbd>F6</kbd>）
3.  【指令查找窗口】指令查找器将监视数据地址，并找出修改数据的指令地址
4.  【指令查找窗口】点选找出的指令地址，点击“Show disassembler”按钮，弹出反汇编窗口
5.  【反汇编窗口】展开菜单栏“Tools”菜单，点击“Auto Assemble”按钮（<kbd>Ctrl</kbd> + <kbd>A</kbd>），弹出自动汇编窗口
6.  【自动汇编窗口】展开菜单栏“Template”菜单，点击“Code injection”按钮（<kbd>Ctrl</kbd> + <kbd>I</kbd>），应用模板
7.  【自动汇编窗口】编辑并注入汇编代码

### 多级指针

类似于一级指针。通常，当指针地址是静态地址时，显示为绿色。

这里使用 Pointer Scanner 进行自动搜索：

1.  【主界面】找到数据地址
2.  【主界面】右击展开上下文菜单，点击“Pointer scan for this address”按钮，弹出指针扫描窗口
3.  【指针扫描窗口】进行初次扫描
4.  【指针扫描窗口】改变指针（通过重开游戏、重启游戏等，可能需要重新打开进程、加载指针表）
5.  【指针扫描窗口】展开菜单栏“Pointer scanner”菜单，点击“Rescan memory”按钮（<kbd>Ctrl</kbd> + <kbd>R</kbd>），筛除无效指针
