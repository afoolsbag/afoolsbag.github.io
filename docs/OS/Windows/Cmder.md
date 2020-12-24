# Cmder

[Cmder] 是适用于 :material-microsoft-windows: Windows 操作系统的命令行壳层。

## 运行 Cmder

!!! hint

    也许可以试试 [Terminal](../Terminal/)？

### :material-microsoft-windows: Windows 10 和 Scoop

``` ps1con
PS $env:USERPROFILE> scoop install cmder[-full]
```

## Cmder 快捷键

!!! cite

    Tab manipulation
    
    * <kbd>Ctrl</kbd> + <kbd>T</kbd> : New tab dialog (maybe you want to open cmd as admin?)
    * <kbd>Ctrl</kbd> + <kbd>W</kbd> : Close tab
    * <kbd>Ctrl</kbd> + <kbd>D</kbd> : Close tab (if pressed on empty command)
    * <kbd>Shift</kbd> + <kbd>Alt</kbd> + <kbd>#Number</kbd> : Fast new tab: <kbd>1</kbd> - CMD, <kbd>2</kbd> - PowerShell
    * <kbd>Ctrl</kbd> + <kbd>Tab</kbd> : Switch to next tab
    * <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Tab</kbd> : Switch to previous tab
    * <kbd>Ctrl</kbd> + <kbd>#Number</kbd> : Switch to tab #Number
    * <kbd>Alt</kbd> + <kbd>Enter</kbd>: Fullscreen
    
    Shell
    
    * <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>U</kbd> : Traverse up in directory structure (lovely feature!)
    * <kbd>End</kbd>, <kbd>Home</kbd>, <kbd>Ctrl</kbd> : Traversing text with as usual on Windows
    * <kbd>Ctrl</kbd> + <kbd>R</kbd> : History search
    * <kbd>Shift</kbd> + Mouse : Select and copy text from buffer
    
    _(Some shortcuts are not yet documented, though they exist - please document them here)_

参见 [Cmder § Keyboard shortcuts](https://github.com/cmderdev/cmder/blob/master/README.md#keyboard-shortcuts)。

<!----------------------------------------------------------------------------->

[Cmder]: https://cmder.net/

*[Cmder]: Console Emulator
