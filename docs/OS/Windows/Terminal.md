# Terminal

[Terminal] 是适用于 :material-microsoft-windows: Windows 10 操作系统的命令行壳层。

参见 [Windows 终端 | Microsoft Docs](https://docs.microsoft.com/windows/terminal/)。

## Terminal 快捷键

### 窗口（Window）

| 动作                             | 快捷键             |
| :------------------------------- | :----------------- |
| :material-close: 关闭窗口        | ++alt+f4++         |
| :material-fullscreen: 切换全屏   | ++alt+enter++      |
|                                  | ++f11++            |
| :material-file-cog: 配置文件     | ++ctrl+comma++     |
| :material-file-cog: 默认配置文件 | ++ctrl+alt+comma++ |
| :material-text-search: 文本查找  | ++ctrl+shift+f++   |
| :material-card-search: 命令查找  | ++ctrl+shift+p++   |

### 标签页（Tab）

| 动作                                  | 快捷键                |
| :------------------------------------ | :-------------------- |
| :material-close: 关闭标签页           | 无                    |
| :material-plus: 新建标签页            | ++ctrl+shift+t++      |
| :material-chevron-down: 标签页下拉框  | ++ctrl+shift+space++  |
| :material-tab: 下拉框标签页           | ++ctrl+shift+"数字"++ |
| :material-tab-plus: 复制标签页        | ++ctrl+shift+d++      |
| :material-swap-horizontal: 标签页导航 | ++ctrl+tab++          |
|                                       | ++ctrl+shift+tab++    |
|                                       | ++ctrl+alt+"数字"++   |

### 窗格（Pane）

| 动作                                       | 快捷键              |
| :----------------------------------------- | :------------------ |
| :material-close: 关闭窗格                  | ++ctrl+shift+w++    |
| :material-arrow-split-vertical: 左右拆分   | ++alt+shift+plus++  |
| :material-arrow-split-horizontal: 上下拆分 | ++alt+shift+minus++ |
| :material-rhombus-split: 自动拆分          | ++alt+shift+d++     |
| :material-move-resize: 调整尺寸            | ++alt+shift+left++  |
|                                            | ++alt+shift+down++  |
|                                            | ++alt+shift+up++    |
|                                            | ++alt+shift+right++ |
| :material-arrow-all: 窗格导航              | ++alt+left++        |
|                                            | ++alt+down++        |
|                                            | ++alt+up++          |
|                                            | ++alt+right++       |

### 其它

**剪切板**

| 动作                          | 快捷键           |
| :---------------------------- | :--------------- |
| :material-content-copy: 复制  | ++ctrl+insert++  |
|                               | ++ctrl+shift+c++ |
|                               | ++ctrl+c++       |
| :material-content-paste: 粘贴 | ++shift+insert++ |
|                               | ++ctrl+shift+v++ |
|                               | ++ctrl+v++       |

**滚动**

| 动作                                    | 快捷键               |
| :-------------------------------------- | :------------------- |
| :material-chevron-double-up: 上滚一页   | ++ctrl+shift+pg-up++ |
| :material-chevron-up: 上滚              | ++ctrl+shift+up++    |
| :material-chevron-down: 下滚            | ++ctrl+shift+down++  |
| :material-chevron-double-down: 下滚一页 | ++ctrl+shift+pg-dn++ |

**字体**

| 动作                                          | 快捷键         |
| :-------------------------------------------- | :------------- |
| :material-format-font-size-increase: 加大字号 | ++ctrl+plus++  |
| :material-format-size: 重置字号               | ++ctrl+0++     |
| :material-format-font-size-decrease: 缩小字号 | ++ctrl+minus++ |

参见 [Windows Terminal Actions | Microsoft Docs](https://docs.microsoft.com/windows/terminal/customize-settings/actions)。

## Terminal 个性化

``` json
{
    "profiles":
    {
        "defaults":
        {
            // 文本
            // https://docs.microsoft.com/windows/terminal/customize-settings/profile-settings#text-settings
            "fontFace": "Cascadia Code",

            // 光标
            // https://docs.microsoft.com/windows/terminal/customize-settings/profile-settings#cursor-settings
            "cursorShape": "filledBox",

            // 颜色
            // https://docs.microsoft.com/windows/terminal/customize-settings/profile-settings#color-settings

            // 背景磨砂
            // https://docs.microsoft.com/windows/terminal/customize-settings/profile-settings#acrylic-settings
            "useAcrylic": true

            // 背景图像
            // https://docs.microsoft.com/windows/terminal/customize-settings/profile-settings#background-image-settings
        }
    }
}
```

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

### 更纱黑体

[更纱黑体] 是一款中日韩字体集，其中包含等宽字体 `等宽更纱黑体 SC`。

## Terminal + Cmder 集成

[Cmder] 除了提供了一款虚拟终端外，还通过 Git 提供了完整的 Unix 命令。
Terminal + Cmder 可以将该能力集成：

``` json
{
    "profiles":
    {
        "list":
        [
            {
                "guid": "{6d953325-a939-475d-a151-940cbd0302fb}",
                "commandline": "CMD /K %CMDER_ROOT%\\vendor\\init.bat",
                "name": "Cmder",
                "icon": "%CMDER_ROOT%\\icons\\cmder.ico",
                "hidden": false
            }
        ]
    }
}
```

参见 [Windows Terminal + Cmder = ❤](https://medium.com/talpor/windows-terminal-cmder-=❤-573e6890d143)。

<!----------------------------------------------------------------------------->

[Cascadia Code]: https://github.com/microsoft/cascadia-code
[Cmder]:         https://cmder.net/
[Terminal]:      https://github.com/microsoft/terminal
[更纱黑体]:      https://github.com/be5invis/Sarasa-Gothic
