# Chocolatey

[Chocolatey] 是一款适用于 Windows 操作系统的包管理器。

参见 [12 Best Windows package managers as of 2020 - Slant](https://www.slant.co/topics/1843/~best-windows-package-managers)。

## 运行 Chocolatey

### :material-microsoft-windows: Windows 10

1.  配置执行策略

    ```ps1con
    PS $env:ALLUSERSPROFILE> Set-ExecutionPolicy RemoteSigned -Scope Process -Force
    ```

0.  可选的，配置包管理器（而非应用程序）的安装路径

    ```ps1con
    PS $env:ALLUSERSPROFILE> $env:ChocolateyInstall='%ALLUSERSPROFILE%\Chocolatey'

    PS $env:ALLUSERSPROFILE> [System.Environment]::setEnvironmentVariable('ChocolateyInstall', $env:ChocolateyInstall, [System.EnvironmentVariableTarget]::Machine)
    ```

0.  安装 Chocolatey

    ```ps1con
    PS $env:ALLUSERSPROFILE> Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')
    PS abbr.               > Invoke-WebRequest -UseBasicParsing 'chocolatey.org/install.ps1' | Invoke-Expression
    PS abbr.               > iwr -useb chocolatey.org/install.ps1 | iex
    ```

## `choco` 命令

### 管理器

#### 更新 Chocolatey

```ps1con
PS $env:ALLUSERSPROFILE> choco upgrade chocolatey
PS abbr.               > cup chocolatey
```

#### 刷新环境变量

```ps1con
PS $env:ALLUSERPROFILE> RefreshEnv
```

#### 卸载 Chocolatey

参见 [Chocolatey Software | Uninstallation](https://chocolatey.org/docs/uninstallation)。

### 包

#### 搜索包

```ps1con
PS $env:ALLUSERSPROFILE> choco search <filter>
```

#### 查看包

```ps1con
PS $env:ALLUSERSPROFILE> choco info <pkg>
```

#### 列出本地包

```ps1con
PS $env:ALLUSERSPROFILE> choco list --local-only
PS abbr.               > clist -l
```

#### 安装包

```ps1con
PS $env:ALLUSERSPROFILE> choco install <pkg> [--install-directory="$env:ProgramFiles"] [--install-arguments='']
PS abbr.               > cinst <pkg> [--dir="$env:ProgramFiles"] [--ia='']
```

#### 列出过期包

```ps1con
PS $env:ALLUSERSPROFILE> choco outdated
```

#### 升级包

```
PS $env:ALLUSERSPROFILE> choco upgrade {<pkg>|all}
PS abbr.               > cup {<pkg>|all}
```

#### 卸载包

```ps1con
PS $env:ALLUSERSPROFILE> choco uninstall <pkg>
```

<!----------------------------------------------------------------------------->

[Scoop]:      https://scoop.sh/
[Chocolatey]: https://chocolatey.org/
