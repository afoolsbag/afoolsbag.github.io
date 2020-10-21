# Markdown

Markdown 是一款轻量级标记语言，由 John Gruber 和 Aaron Swartz 在 2004 年发明。[^Markdown on Wikipedia]

## Markdown
---

标准 [Markdown] 支持以下语法：

### 段落和折行（`<p>` 和 `<br>`）

> 段落是简单的一个或多个连续的文本行，由一个或多个空行分隔。（空行是指任何看起来像空行的行——除了空格或制表符之外什么都没有的行被认为是空行）。正常的段落不应该用空格或制表符缩进。
>
> 当你想使用 Markdown 插入一个折行标签（`<br />`）时，你可以用两个或更多的空格来结束一行，然后输入回车。

### Setext 风格的标题（`<h#>`）

> [Setext] 风格的标题使用等号（对于一级标题）和破折号（对于二级标题）来“做下划线”。例如：
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

### atx 风格的标题（`<h#>`）

> [atx] 风格的标题在行首使用 1-6 个井号，对应 1-6 级标题。例如：
>
> ``` md
> # 这是一级标题
>
> ## 这是二级标题
>
> ###### 这是六级标题
> ```

### 块级引文（`<blockquote>`）

> Markdown 使用电子邮件风格的 `>` 字符进行块级引用。例如：
>
> ``` md
> > 这是有两个段落的引文，这是第一个段落。
> >
> > 这是第二个段落。
> ```

### 无序列表（`<ul>`）

> 无序列表使用星号（`*`）、加号（`+`）和减号（`-`）作为列表标记。例如：
>
> ``` md
> *   无序列表项 A
> *   无序列表项 B
> *   无序列表项 C
> ```

### 有序列表（`<ol>`）

> 有序列表使用数字后加句点作为列表标记。例如：
>
> ``` md
> 1.  有序列表项 1
> 1.  有序列表项 2
> 1.  有序列表项 3
> ```

### 缩进风格的代码块（`<pre>`）

> 要在 Markdown 中生成一个代码块，只需将代码块的每一行缩进至少 4 个空格或 1 个制表符。例如：
>
> ``` md
>     main( ) {
>             printf("hello, world\n");
>     }
> ```

### 水平线（`<hr>`）

> 你可以通过在一行上单独放置三个或更多的连字符（`-`）、星号（`*`）或下划线（`_`）来生成一个水平线（`<hr />`）。如果你愿意，可以在连字符（`-`）或星号（`*`）之间使用空格。

### 内联风格的链接（`<a>`）

> 要创建一个内联风格的链接，使用方括号括住链接文本，并紧跟着一对小括号。在小括号内，放入你想要链接指向的 URL，以及可选的用引号包围的标题。例如：
>
> ``` md
> 这是内联风格链接的 [一个示例](http://example.com/ "标题")。
>
> [这个链接](http://example.net/) 没有标题属性。
> ```

### 参考风格的链接（`<a>`）

> 参考风格的链接使用第二对方括号，在方括号内放置一个您选择的标识，以识别链接。例如：
>
> ``` md
> 这是参考风格链接的 [一个示例][标识]。
>
> [这个链接][] 隐去了链接标识。
>
> [标识]: http://example.com/ "可选的标题"
> [这个链接]: http://example.com/
> ```

### 自动链接（`<a>`）

> Markdown 支持一种为 URL 和电子邮件地址创建“自动”链接的快捷样式：简单地用尖括号包围 URL 或电子邮件地址。例如：
>
> ``` md
> <http://example.com/>
> ```

### 强调（`<em>` 和 `<strong>`）

> Markdown 将星号（`*`）和下划线（`_`）用作强调的标志。用一个 `*` 或 `_` 包装的文本将用 `<em>` 标签包装；双 `*` 或 `_` 将用 `<strong>` 标签包装。例如：
>
> ``` md
> 这个词被标注为*强调*。
>
> 这个词被标注为**重要**。
> ```

### 行内代码（`<code>`）

> 要表示一个行内代码，请用反引号（`` ` ``）将其括起来，例如：
>
> ``` md
> Markdown 以反引号（`` ` ``）标注行内代码。
> ```

### 图片（`<img>`）

> 图片类似于链接，同样支持内联风格和参考风格，但在第一个中括号前紧置一个感叹号（`!`）。例如：
>
> ``` md
> 这是一张图片： ![替代文本](url/to/image "可选的标题")。
>
> 这也是一张图片： ![替代文本][标识]。
>
> [标识]: url/to/image "可选的标题"
> ```

## Python-Markdown
---

[Python-Markdown] 是 Markdown 的 Python 实现，并提供了若干扩展：

### Abbreviations 扩展（`<abbr>`）

> ``` md
> The HTML specification is maintained by the W3C.
>
> *[HTML]: Hyper Text Markup Language
> *[W3C]:  World Wide Web Consortium
> ```

### Definition Lists 扩展（`<dl>`）

> ``` md
> Apple
> :   Pomaceous fruit of plants of the genus Malus in
>     the family Rosaceae.
>
> Orange
> :   The fruit of an evergreen tree of the genus Citrus.
> ```

### CodeHilite 扩展

[CodeHilite] 使用 [Pygments] 或配合 [highlight.js] 实现高亮。

Pygments 支持的语言使用 `pygmentize -L lexers` 命令列出，hightlight.js 支持的语言在 [Supported Languages](https://github.com/highlightjs/highlight.js/blob/master/SUPPORTED_LANGUAGES.md) 页面列出。一些常用的高亮环境：

| Language                   | Pygments Laxer Names                             | highlight.js Classes                                 |
|:-------------------------- |:------------------------------------------------ |:---------------------------------------------------- |
| AutoHotkey                 | `autohotkey`, `ahk`                              | `autohotkey`                                         |
| Bash                       | `bash`, `sh`, `ksh`, `zsh`, `shell`              | `bash`, `sh`, `zsh`                                  |
| Bash session               | `console`, `shell-session`                       | `console`, `shell`                                   |
| Batchfile                  | `bat`, `batch`, `dosbatch`, `winbatch`           | `bat`, `cmd`, `dos`                                  |
| BNF                        | `bnf`                                            | `bnf`                                                |
| C                          | `c`                                              | `c`, `h`                                             |
| C#                         | `csharp`, `c#`                                   | `csharp`, `cs`                                       |
| C++                        | `cpp`, `c++`                                     | `cpp`, `hpp`, `cc`, `hh`, `c++`, `h++`, `cxx`, `hxx` |
| CMake                      | `cmake`                                          | `cmake`, `cmake.in`                                  |
| CSS                        | `css`                                            | `css`                                                |
| Dockerfile                 | `dockerfile`, `docker`                           | `dockerfile`, `docker`                               |
| DOS session                | `doscon`                                         |                                                      |
| EBNF                       | `ebnf`                                           | `ebnf`                                               |
| Go                         | `go`                                             | `go`, `golang`                                       |
| Groovy                     | `groovy`                                         | `groovy`                                             |
| HTML                       | `html`                                           | `html`                                               |
| HTTP                       | `http`                                           | `http`, `https`                                      |
| INI                        | `ini`, `cfg`, `dosini`                           | `ini`                                                |
| JSON                       | `json`                                           | `json`                                               |
| Java                       | `java`                                           | `java`                                               |
| JavaScript                 | `javascript`, `js`                               | `javascript`, `js`                                   |
| (La)TeX                    | `tex`, `latex`                                   | `tex`                                                |
| Lua                        | `lua`                                            | `lua`                                                |
| Makefile                   | `makefile`, `make`, `mf`, `bsdmake`              | `makefile`, `mk`, `mak`                              |
| Markdown                   | `md`                                             | `markdown`, `md`, `mkdown`, `mkd`                    |
| Nginx                      | `nginx`                                          | `nginx`, `nginxconf`                                 |
| Plaintext                  | `text`                                           | `plaintext`, `txt`, `text`                           |
| PostgreSQL                 | `postgresql`, `postgres`                         | `postgresql`, `postgres`, `pgsql`                    |
| PostgreSQL console session | `postgresql-console`, `postgres-console`, `psql` |                                                      |
| PowerShell                 | `powershell`, `ps1`, `posh`, `psm1`              | `powershell`, `ps1`, `ps`                            |
| PowerShell session         | `ps1con`                                         |                                                      |
| Python                     | `python`, `py`                                   | `python`, `py`, `gyp`                                |
| Python console session     | `pycon`                                          | `pycon`, `python-repl`                               |
| Ruby                       | `ruby`, `rb`                                     | `ruby`, `rb`                                         |
| Ruby console session       | `rbcon`, `irb`                                   | `irb`                                                |
| Scala                      | `scala`                                          | `scala`                                              |
| SQL                        | `sql`                                            | `sql`                                                |
| TOML                       | `toml`                                           | `toml`                                               |
| TypeScript                 | `typescript`, `ts`                               | `typescript`, `ts`                                   |
| VimL                       | `vim`                                            | `vim`                                                |
| x86 Assembly               |                                                  | `x86asm`                                             |
| XML                        | `xml`                                            | `xml`                                                |
| YAML                       | `yaml`                                           | `yaml`, `yml`                                        |

### Table of Contents 扩展

## PyMdown Extensions
---

[PyMdown Extensions] 是 Python-Markdown 的第三方扩展，提供了更多扩展：

### Arithmatex 扩展

<!----------------------------------------------------------------------------->

[atx]:                http://www.aaronsw.com/2002/atx/
[CodeHilite]:         https://python-markdown.github.io/extensions/code_hilite/
[highlight.js]:       https://highlightjs.org/
[Markdown]:           https://daringfireball.net/projects/markdown/
[Pygments]:           https://pygments.org/
[PyMdown Extensions]: https://facelessuser.github.io/pymdown-extensions/
[Python-Markdown]:    https://python-markdown.github.io/
[Setext]:             https://docutils.sourceforge.io/mirror/setext.html

[^Markdown on Wikipedia]: [Markdown - Wikipedia](https://wikipedia.org/wiki/Markdown).
