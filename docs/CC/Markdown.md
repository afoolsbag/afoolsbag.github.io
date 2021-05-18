# Markdown

[:material-language-markdown: Markdown][Markdown] 是一款轻量级标记语言，由 John Gruber 和 Aaron Swartz 在 2004 年发明。[^Markdown on Wikipedia]

## Markdown
---

标准 [:material-language-markdown: Markdown][Markdown] 支持以下语法：

### 段落和折行

参见 [Daring Fireball: Markdown Syntax Documentation § PARAGRAPHS AND LINE BREAKS](https://daringfireball.net/projects/markdown/syntax#p)。

### Setext 风格标题

!!! example "Setext 风格标题示例"

    === "HTML 输出"

        !!! missing "渲染冲突，略。"

    === "Markdown 输入"

        ``` md
        This is an H1
        =============

        This is an H2
        -------------
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § HEADERS](https://daringfireball.net/projects/markdown/syntax#header)。

### atx 风格标题

!!! example "atx 风格标题示例"

    === "HTML 输出"

        !!! missing "渲染冲突，略。"

    === "Markdown 输入"

        ``` md
        # This is an H1

        ## This is an H2

        ###### This is an H6
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § HEADERS](https://daringfireball.net/projects/markdown/syntax#header)。

### 块级引文

!!! example "块级引文示例"

    === "HTML 输出"

        > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
        > consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
        > Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
        > 
        > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
        > id sem consectetuer libero luctus adipiscing.

    === "Markdown 输入"

        ``` md
        > This is a blockquote with two paragraphs. Lorem ipsum dolor sit amet,
        > consectetuer adipiscing elit. Aliquam hendrerit mi posuere lectus.
        > Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.
        > 
        > Donec sit amet nisl. Aliquam semper ipsum sit amet velit. Suspendisse
        > id sem consectetuer libero luctus adipiscing.
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § BLOCKQUOTES](https://daringfireball.net/projects/markdown/syntax#blockquote)。

### 无序列表

!!! example "无序列表示例"

    === "HTML 输出"

        *   Red
        *   Green
        *   Blue

    === "Markdown 输入"

        ``` md
        *   Red
        *   Green
        *   Blue
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § LISTS](https://daringfireball.net/projects/markdown/syntax#list)。

### 有序列表

!!! example "有序列表示例"

    === "HTML 输出"

        1.  Bird
        1.  McHale
        1.  Parish

    === "Markdown 输入"

        ``` md
        1.  Bird
        1.  McHale
        1.  Parish
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § LISTS](https://daringfireball.net/projects/markdown/syntax#list)。

### 缩进风格代码块

!!! example "缩进风格代码块示例"

    === "HTML 输出"

        This is a normal paragraph:

            This is a code block.

    === "Markdown 输入"

        ``` md
        This is a normal paragraph:

            This is a code block.
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § CODE BLOCKS](https://daringfireball.net/projects/markdown/syntax#precode)。

### 水平线

!!! example "水平线示例"

    === "HTML 输出"

        * * *

        ***

        *****

        - - -

        ---------------------------------------

    === "Markdown 输入"

        ``` md
        * * *

        ***

        *****

        - - -

        ---------------------------------------
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § HORIZONTAL RULES](https://daringfireball.net/projects/markdown/syntax#hr)。

### 内联风格链接

!!! example "内联风格链接示例"

    === "HTML 输出"

        This is [an example](http://example.com/ "Title") inline link.

        [This link](http://example.net/) has no title attribute.

    === "Markdown 输入"

        ``` md
        This is [an example](http://example.com/ "Title") inline link.

        [This link](http://example.net/) has no title attribute.
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § LINKS](https://daringfireball.net/projects/markdown/syntax#link)。

### 参考风格链接

!!! example "参考风格链接示例"

    === "HTML 输出"

        This is [an example][id] reference-style link.

        [id]: http://example.com/  "Optional Title Here"

    === "Markdown 输入"

        ``` md
        This is [an example][id] reference-style link.

        [id]: http://example.com/  "Optional Title Here"
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § LINKS](https://daringfireball.net/projects/markdown/syntax#link)。

### 自动链接

!!! example "自动链接示例"

    === "HTML 输出"

        <http://example.com/>

    === "Markdown 输入"

        ``` md
        <http://example.com/>
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § AUTOMATIC LINKS](https://daringfireball.net/projects/markdown/syntax#autolink)。

### 强调

!!! example "强调示例"

    === "HTML 输出"

        *single asterisks*

        _single underscores_

        **double asterisks**

        __double underscores__

    === "Markdown 输入"

        ``` md
        *single asterisks*

        _single underscores_

        **double asterisks**

        __double underscores__
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § EMPHASIS](https://daringfireball.net/projects/markdown/syntax#em)。

### 行内代码

!!! example "行内代码示例"

    === "HTML 输出"

        Use the `printf()` function.

    === "Markdown 输入"

        ``` md
        Use the `printf()` function.
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § CODE](https://daringfireball.net/projects/markdown/syntax#code)。

### 图片

!!! example "图片示例"

    === "HTML 输出"

        ![Alt text](/path/to/img.jpg)

        ![Alt text](/path/to/img.jpg "Optional title")

    === "Markdown 输入"

        ``` md
        ![Alt text](/path/to/img.jpg)

        ![Alt text](/path/to/img.jpg "Optional title")
        ```

参见 [Daring Fireball: Markdown Syntax Documentation § IMAGES](https://daringfireball.net/projects/markdown/syntax#img)。

### 转义

参见 [Daring Fireball: Markdown Syntax Documentation § BACKSLASH ESCAPES](https://daringfireball.net/projects/markdown/syntax#backslash)。

## Python-Markdown
---

[Python-Markdown] 是 Markdown 的 Python 实现，并提供了若干扩展：

### Abbreviations 扩展

!!! example "缩写示例"

    === "HTML 输出"

        The HTML5 specification
        is maintained by the W3C.

        *[HTML5]: Hyper Text Markup Language 5th Version
        *[W3C]:  World Wide Web Consortium

    === "Markdown 输入"

        ``` md
        The HTML5 specification
        is maintained by the W3C.

        *[HTML5]: Hyper Text Markup Language 5th Version
        *[W3C]:  World Wide Web Consortium
        ```

参见 [Abbreviations — Python-Markdown documentation](https://python-markdown.github.io/extensions/abbreviations/)。

### Admonition 扩展

!!! example "告诫示例"

    === "HTML 输出"

        !!! type "optional explicit title within double quotes"
            Any number of other indented markdown elements.

            This is the second paragraph.

    === "Markdown 输入"

        ``` md
        !!! type "optional explicit title within double quotes"
            Any number of other indented markdown elements.

            This is the second paragraph.
        ```

??? tldr "支持的告诫类型"

    !!! abstract "`abstract`, `summary`, `tldr`"

    !!! attention "`attention`, `caution`, `warning`"

    !!! bug "`bug`"

    !!! check "`check`, `done`, `success`"

    !!! cite "`cite`, `quote`"

    !!! danger "`danger`, `error`"

    !!! example "`example`"

    !!! fail "`fail`, `failure`, `missing`"

    !!! faq "`faq`, `help`, `question`"

    !!! hint "`hint`, `important`, `tip`"

    !!! info "`info`, `todo`"

    !!! note "`note`"

参见：

*   [pymdown-extensions/_admonition.scss at master · facelessuser/pymdown-extensions](https://github.com/facelessuser/pymdown-extensions/blob/master/docs/src/scss/extensions/_admonition.scss)
*   [reStructuredText Directives § Specific Admonitions](https://docutils.sourceforge.io/docs/ref/rst/directives.html#specific-admonitions)
*   [Admonition — Python-Markdown documentation](https://python-markdown.github.io/extensions/admonition/)

### Attribute Lists 扩展

参见 [Attribute Lists — Python-Markdown documentation](https://python-markdown.github.io/extensions/attr_list/)。

### CodeHilite 扩展

[CodeHilite] 通过 [Pygments] 或配合 [highlight.js] 实现代码高亮。
Pygments 支持的语言使用 `pygmentize -L lexers` 命令列出，hightlight.js 支持的语言在 [Supported Languages](https://github.com/highlightjs/highlight.js/blob/master/SUPPORTED_LANGUAGES.md) 页面列出。

另外，[GitHub] 使用 [Linguist] 实现代码高亮，支持的语言在 [languages.yml](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml) 列出。

???+ tldr "常用的语言标识"

    | Language                   | Pygments Laxer Names                             | highlight.js Classes                                 |
    |:-------------------------- |:------------------------------------------------ |:---------------------------------------------------- |
    | AutoHotkey                 | `autohotkey`, `ahk`                              | `autohotkey`                                         |
    | Bash                       | `bash`, `sh`, `ksh`, `zsh`, `shell`              | `bash`, `sh`, `zsh`                                  |
    | Bash Session               | `console`, `shell-session`                       | `console`, `shell`                                   |
    | Batchfile                  | `bat`, `batch`, `dosbatch`, `winbatch`           | `bat`, `cmd`, `dos`                                  |
    | BNF                        | `bnf`                                            | `bnf`                                                |
    | C                          | `c`                                              | `c`, `h`                                             |
    | C#                         | `csharp`, `c#`                                   | `csharp`, `cs`                                       |
    | C++                        | `cpp`, `c++`                                     | `cpp`, `hpp`, `cc`, `hh`, `c++`, `h++`, `cxx`, `hxx` |
    | CMake                      | `cmake`                                          | `cmake`, `cmake.in`                                  |
    | CSS                        | `css`                                            | `css`                                                |
    | Dockerfile                 | `dockerfile`, `docker`                           | `dockerfile`, `docker`                               |
    | DOS Session                | `doscon`                                         |                                                      |
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
    | PostgreSQL Console Session | `postgresql-console`, `postgres-console`, `psql` |                                                      |
    | PowerShell                 | `powershell`, `ps1`, `posh`, `psm1`              | `powershell`, `ps1`, `ps`                            |
    | PowerShell Session         | `ps1con`                                         |                                                      |
    | Properties                 | `properties`, `jproperties`                      |                                                      |
    | Python                     | `python`, `py`                                   | `python`, `py`, `gyp`                                |
    | Python Console Session     | `pycon`                                          | `pycon`, `python-repl`                               |
    | Ruby                       | `ruby`, `rb`                                     | `ruby`, `rb`                                         |
    | Ruby Console Session       | `rbcon`, `irb`                                   | `irb`                                                |
    | Scala                      | `scala`                                          | `scala`                                              |
    | SQL                        | `sql`                                            | `sql`                                                |
    | TOML                       | `toml`                                           | `toml`                                               |
    | TypeScript                 | `typescript`, `ts`                               | `typescript`, `ts`                                   |
    | VimL                       | `vim`                                            | `vim`                                                |
    | x86 Assembly               |                                                  | `x86asm`                                             |
    | XML                        | `xml`                                            | `xml`                                                |
    | YAML                       | `yaml`                                           | `yaml`, `yml`                                        |

参见 [CodeHilite — Python-Markdown documentation](https://python-markdown.github.io/extensions/code_hilite/)。

### Definition Lists 扩展

!!! example "定义列表示例"

    === "HTML 输出"

        Apple
        :   Pomaceous fruit of plants of the genus Malus in
            the family Rosaceae.

        Orange
        :   The fruit of an evergreen tree of the genus Citrus.

    === "Markdown 输入"

        ``` md
        Apple
        :   Pomaceous fruit of plants of the genus Malus in
            the family Rosaceae.

        Orange
        :   The fruit of an evergreen tree of the genus Citrus.
        ```

参见 [Definition Lists — Python-Markdown documentation](https://python-markdown.github.io/extensions/definition_lists/)。

### Fenced Code Blocks 扩展

!!! example "围栏风格代码块示例"

    === "HTML 输出"

        a paragraph before the code block.

        ```
        a one-line code block
        ```

        a paragraph after the code block.

    === "Markdown 输入"

        ```` md
        a paragraph before the code block.

        ```
        a one-line code block
        ```

        a paragraph after the code block.
        ````

参见 [Fenced Code Blocks — Python-Markdown documentation](https://python-markdown.github.io/extensions/fenced_code_blocks/)。

### Footnotes 扩展

!!! example "脚注示例"

    === "HTML 输出"

        Footnotes[^1] have a label[^@#$%] and the footnote's content.

    === "Markdown 输入"

        ``` md
        Footnotes[^1] have a label[^@#$%] and the footnote's content.

        [^1]: This is a footnote content.
        [^@#$%]: A footnote on the label: "@#$%".
        ```

[^1]: This is a footnote content.
[^@#$%]: A footnote on the label: "@#$%".

参见 [Footnotes — Python-Markdown documentation](https://python-markdown.github.io/extensions/footnotes/)。

### Legacy Attributes 扩展

参见 [Legacy Attributes — Python-Markdown documentation](https://python-markdown.github.io/extensions/legacy_attrs/)。

### Legacy Emphasis 扩展

参见 [Legacy Emphasis — Python-Markdown documentation](https://python-markdown.github.io/extensions/legacy_em/)。

### Markdown in HTML 扩展

参见 [Markdown in HTML — Python-Markdown documentation](https://python-markdown.github.io/extensions/md_in_html/)。

### Meta-Data 扩展

参见 [Meta-Data — Python-Markdown documentation](https://python-markdown.github.io/extensions/meta_data/)。

### New Line to Break 扩展

参见 [New Line to Break — Python-Markdown documentation](https://python-markdown.github.io/extensions/nl2br/)。

### Sane Lists 扩展

参见 [Sane Lists — Python-Markdown documentation](https://python-markdown.github.io/extensions/sane_lists/)。

### SmartyPants 扩展

| HTML 输出 | Markdown 输入 |
|:--------- |:------------- |
| 'abc'     | `'abc'`       |
| "abc"     | `"abc"`       |
| ...       | `...`         |
| --        | `--`          |
| ---       | `---`         |

参见 [SmartyPants — Python-Markdown documentation](https://python-markdown.github.io/extensions/smarty/)。

### Table of Contents 扩展

参见 [Table of Contents — Python-Markdown documentation](https://python-markdown.github.io/extensions/toc/)。

### Tables 扩展

!!! example "表格示例"

    === "HTML 输出"

        First Header  | Second Header
        ------------- | -------------
        Content Cell  | Content Cell
        Content Cell  | Content Cell

    === "Markdown 输入"

        ``` md
        First Header  | Second Header
        ------------- | -------------
        Content Cell  | Content Cell
        Content Cell  | Content Cell
        ```

参见：

*   [PHP Markdown Extra § Tables](https://michelf.ca/projects/php-markdown/extra/#table)
*   [Tables — Python-Markdown documentation](https://python-markdown.github.io/extensions/tables/)

### WikiLinks 扩展

参见 [WikiLinks — Python-Markdown documentation](https://python-markdown.github.io/extensions/wikilinks/)。

## PyMdown Extensions
---

[PyMdown Extensions] 是 Python-Markdown 的第三方扩展包，提供了更多扩展：

### Arithmatex 扩展

参见：

*   [KaTeX – The fastest math typesetting library for the web](https://katex.org/)
*   [MathJax | Beautiful math in all browsers.](https://www.mathjax.org/)
*   [Arithmatex - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/arithmatex/)

### B64 扩展

参见 [B64 - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/b64/)。

### BetterEm 扩展

参见 [BetterEm - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/betterem/)。

### Caret 扩展

!!! example "上标和下划线示例"

    === "HTML 输出"

        ^^Insert me^^

        H^2^0

        text^a\ superscript^

    === "Markdown 输入"

        ``` md
        ^^Insert me^^

        H^2^0

        text^a\ superscript^
        ```

参见 [Caret - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/caret/)。

### Critic 扩展

参见 [Critic - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/critic/)。

### Details 扩展

!!! example "详情示例"

    === "HTML 输出"

        ???+ note "Open styled details"

            ??? danger "Nested details!"
                And more content again.

    === "Markdown 输入"

        ``` md
        ???+ note "Open styled details"

            ??? danger "Nested details!"
                And more content again.
        ```

??? tldr "支持的详情类型"

    ??? abstract "`abstract`, `summary`, `tldr`"

    ??? attention "`attention`, `caution`, `warning`"

    ??? bug "`bug`"

    ??? check "`check`, `done`, `success`"

    ??? cite "`cite`, `quote`"

    ??? danger "`danger`, `error`"

    ??? example "`example`"

    ??? fail "`fail`, `failure`, `missing`"

    ??? faq "`faq`, `help`, `question`"

    ??? hint "`hint`, `important`, `tip`"

    ??? info "`info`, `todo`"

    ??? note "`note`"

参见：

*   [pymdown-extensions/_admonition.scss at master · facelessuser/pymdown-extensions](https://github.com/facelessuser/pymdown-extensions/blob/master/docs/src/scss/extensions/_admonition.scss)
*   [pymdown-extensions/_details.scss at master · facelessuser/pymdown-extensions](https://github.com/facelessuser/pymdown-extensions/blob/master/docs/src/scss/extensions/_details.scss)
*   [Details - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/details/)

### Emoji 扩展

参见：

*   :material-material-design: [Material Design Icons](https://materialdesignicons.com/)
*   :fontawesome-brands-font-awesome-flag: [Font Awesome](https://fontawesome.com/icons?d=gallery&m=free)
*   :octicons-mark-github-16: [Octicons](https://primer.style/octicons/)
*   [Icons + Emojis - Material for MkDocs § Usage](https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/#usage)
*   [Emoji - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/emoji/)

### EscapeAll 扩展

参见 [EscapeAll - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/escapeall/)。

### Highlight 扩展

参见 [Highlight - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/highlight/)。

### InlineHilite 扩展

参见 [InlineHilite - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/inlinehilite/)。

### Keys 扩展

!!! example "按键示例"

    === "HTML 输出"

        ++ctrl+alt+delete++

    === "Markdown 输入"

        ``` md
        ++ctrl+alt+delete++
        ```

参见 [Keys - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/keys/)。

### MagicLink 扩展

参见 [MagicLink - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/magiclink/)。

### Mark 扩展

!!! example "标记示例"

    === "HTML 输出"

        ==mark me==

        ==smart==mark==

    === "Markdown 输入"

        ``` md
        ==mark me==

        ==smart==mark==
        ```

参见 [Mark - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/mark/)。

### PathConverter 扩展

参见 [PathConverter - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/pathconverter/)。

### ProgressBar 扩展

参见 [ProgressBar - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/progressbar/)。

### SaneHeaders 扩展

参见 [SaneHeaders - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/saneheaders/)。

### SmartSymbols 扩展

| HTML 输出     | Markdown 输入     |
|:------------- |:----------------- |
| (tm)          | `(tm)`            |
| (c)           | `(c)`             |
| (r)           | `(r)`             |
| c/o           | `c/o`             |
| +/-           | `+/-`             |
| -->           | `-->`             |
| <--           | `<--`             |
| <-->          | `<-->`            |
| =/=           | `=/=`             |
| 1/2, 2/3, ... | `1/2`, `2/3`, ... |
| 1st, 2nd, ... | `1st`, `2nd`, ... |

参见 [SmartSymbols - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/smartsymbols/)。

### Snippets 扩展

参见 [Snippets - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/snippets/)。

### StripHTML 扩展

参见 [StripHTML - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/striphtml/)。

### SuperFences 扩展

参见 [SuperFences - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/superfences/)。

### Tabbed 扩展

!!! example "标签页示例"

    === "HTML 输出"

        === "Tab 1"
            Markdown **content**.

            Multiple paragraphs.

        === "Tab 2"
            More Markdown **content**.

            - list item a
            - list item b

    === "Markdown 输入"

        ``` md
        === "Tab 1"
            Markdown **content**.

            Multiple paragraphs.

        === "Tab 2"
            More Markdown **content**.

            - list item a
            - list item b
        ```

参见 [Tabbed - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/tabbed/)。

### TaskList 扩展

!!! example "任务列表示例"

    === "HTML 输出"

        Task List

        - [X] item 1
            * [X] item A
            * [ ] item B
                more text
                + [x] item a
                + [ ] item b
                + [x] item c
            * [X] item C
        - [ ] item 2
        - [ ] item 3

    === "Markdown 输入"

        ``` md
        Task List

        - [X] item 1
            * [X] item A
            * [ ] item B
                more text
                + [x] item a
                + [ ] item b
                + [x] item c
            * [X] item C
        - [ ] item 2
        - [ ] item 3
        ```

参见 [Tasklist - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/tasklist/)。

### Tilde 扩展

!!! example "下标和删除线示例"

    === "HTML 输出"

        ~~Delete me~~

        CH~3~CH~2~OH

        text~a\ subscript~

    === "Markdown 输入"

        ``` md
        ~~Delete me~~

        CH~3~CH~2~OH

        text~a\ subscript~
        ```

参见 [Tilde - PyMdown Extensions Documentation](https://facelessuser.github.io/pymdown-extensions/extensions/tilde/)。

<!----------------------------------------------------------------------------->

[^Markdown on Wikipedia]: [Markdown - Wikipedia](https://wikipedia.org/wiki/Markdown).

[CodeHilite]:         https://python-markdown.github.io/extensions/code_hilite/
[GitHub]:             https://github.com/
[highlight.js]:       https://highlightjs.org/
[Linguist]:           https://github.com/github/linguist
[Markdown]:           https://daringfireball.net/projects/markdown/             "Daring Fireball: Markdown"
[Pygments]:           https://pygments.org/
[PyMdown Extensions]: https://facelessuser.github.io/pymdown-extensions/
[Python-Markdown]:    https://python-markdown.github.io/
