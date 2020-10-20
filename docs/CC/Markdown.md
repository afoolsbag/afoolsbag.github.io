# Markdown

Markdown 是一款轻量级标记语言，由 John Gruber 和 Aaron Swartz 在 2004 年发明。[^Markdown on Wikipedia]

## Markdown
---

标准 Markdown[^Markdown] 支持以下语法：

### 块级元素

#### 段落和折行

> 段落是简单的一个或多个连续的文本行，由一个或多个空行分隔。（空行是指任何看起来像空行的行——除了空格或制表符之外什么都没有的行被认为是空行）。正常的段落不应该用空格或制表符缩进。
>
> 当你想使用 Markdown 插入一个折行标签（`<br />`）时，你可以用两个或更多的空格来结束一行，然后输入回车。

#### Setext 风格的标题

> Setext[^Setext] 风格的标题使用等号（对于一级标题）和破折号（对于二级标题）来“做下划线”。例如：
>
> ``` md
> 这是一级标题
> ===========
>
> 这是二级标题
> -----------
> ```
>
> 任何数量的 `=` 或 `-` “做下划线”都可以。

#### atx 风格的标题

> atx[^atx] 风格的标题在行首使用 1-6 个井号，对应 1-6 级标题。例如：
>
> ``` md
> # 这是一级标题
>
> ## 这是二级标题
>
> ###### 这是六级标题
> ```

#### 块级引文

> Markdown 使用电子邮件风格的 `>` 字符进行块级引用。例如：
>
> ``` md
> > 这是有两个段落的引文，这是第一个段落。
> >
> > 这是第二个段落。
> ```

#### 无序列表

> 无序列表使用星号（`*`）、加号（`+`）和减号（`-`）作为列表标记。例如：
>
> ``` md
> *   无序列表项 A
> *   无序列表项 B
> *   无序列表项 C
> ```

#### 有序列表

> 有序列表使用数字后加句点作为列表标记。例如：
>
> ``` md
> 1.  有序列表项 1
> 1.  有序列表项 2
> 1.  有序列表项 3
> ```

#### 缩进风格的代码块

> 要在 Markdown 中生成一个代码块，只需将代码块的每一行缩进至少 4 个空格或 1 个制表符。例如：
>
> ``` md
>     main( ) {
>             printf("hello, world\n");
>     }
> ```

#### 水平线

> 你可以通过在一行上单独放置三个或更多的连字符（`-`）、星号（`*`）或下划线（`_`）来生成一个水平线（`<hr />`）。如果你愿意，可以在连字符（`-`）或星号（`*`）之间使用空格。

### 行内元素

#### 内联链接

#### 引用链接

#### 自动链接

#### 强调

#### 行内代码

#### 图片

## Python-Markdown
---

[^Python-Markdown]

## PyMdown Extensions
---

[^PyMdown Extensions]



[^Markdown on Wikipedia]: <https://wikipedia.org/wiki/Markdown>.
[^Markdown]: <https://daringfireball.net/projects/markdown/>.
[^Setext]: <https://docutils.sourceforge.io/mirror/setext.html>.
[^atx]: <http://www.aaronsw.com/2002/atx/>.
[^Python-Markdown]: <https://python-markdown.github.io/>.
[^PyMdown Extensions]: <https://facelessuser.github.io/pymdown-extensions/>.
