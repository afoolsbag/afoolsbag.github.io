# Terminal

[Terminal] 是适用于 :material-microsoft-windows: Windows 10 的命令行壳层。

参见 [Windows 终端 | Microsoft Docs](https://docs.microsoft.com/windows/terminal/)。

## Terminal 快捷键

### 标签页

*   新建标签页：++ctrl+shift+"数字"++
*   标签页导航：++ctrl+tab++、  
  \ 　　　　　　++ctrl+shift+tab++

### 窗格

*   水平拆分为左右两格：++alt+shift+plus++
*   垂直拆分为上下两格：++alt+shift+minus++
*   按最大面积自动拆分：++alt+shift+d++
*   窗格导航：++alt+left++、  
  \ 　　　　　++alt+down++、  
  \ 　　　　　++alt+up++、  
  \ 　　　　　++alt+right++

## Cascadia Code 字体

[Cascadia Code] 是一款等宽字体，包括编程连字，旨在增强 Terminal 的现代感。

### Terminal

``` json
{
    "profiles":
    {
        "defaults":
        {
            "fontFace": "Cascadia Code"
        }
    }
}
```

### :material-microsoft-visual-studio-code: Visual Studio Code

``` json
{
    "editor.fontFamily": "'Cascadia Code', ...",
    "editor.fontLigatures": true,
}
```

<!----------------------------------------------------------------------------->

[Cascadia Code]: https://github.com/microsoft/cascadia-code
[Terminal]:      https://github.com/microsoft/terminal
