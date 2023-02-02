# Scoop

[Scoop] 是一款适用于 :material-microsoft-windows: Windows 操作系统的应用管理器。

参见：

*   [So What · lukesampson/scoop Wiki § But I already use X, why should I use Scoop?](https://github.com/lukesampson/scoop/wiki/So-What#but-i-already-use-x-why-should-i-use-scoop)
*   [12 Best Windows package managers as of 2020 - Slant](https://www.slant.co/topics/1843/~best-windows-package-managers)

## 运行 Scoop

### :material-microsoft-windows: Windows 10

1.  配置执行策略

    ``` ps1con title="PowerShell"
    PS $env:USERPROFILE> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```

0.  可选的，配置用户安装路径

    ``` ps1con
    PS $env:USERPROFILE> $env:SCOOP='%USERPROFILE%\scoop'

    PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('SCOOP', $env:SCOOP, [System.EnvironmentVariableTarget]::User)
    ```

0.  安装 Scoop

    ``` ps1con
    PS $env:USERPROFILE> Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh/')
    PS abbr.           > Invoke-WebRequest -UseBasicParsing 'get.scoop.sh' | Invoke-Expression
    PS abbr.           > iwr -useb get.scoop.sh | iex
    ```

0.  可选的，安装 aria2 以支持更快下载

    ``` ps1con
    PS $env:USERPROFILE> scoop install aria2
    ```

0.  安装 Git 以支持 Scoop 自更新

    ``` ps1con
    PS $env:USERPROFILE> scoop install git
    ```

0.  添加 `extras` 桶

    ``` ps1con
    PS $env:USERPROFILE> scoop bucket add extras
    ```

## `scoop` 命令

### 管理器

#### 配置用户安装路径

```ps1con
PS $env:USERPROFILE> $env:SCOOP='%USERPROFILE%\scoop'

PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('SCOOP', $env:SCOOP, [System.EnvironmentVariableTarget]::User)
```

#### 配置全局安装路径

```ps1con
PS $env:USERPROFILE> $env:SCOOP_GLOBAL='%ALLUSERSPROFILE%\scoop'

PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, [System.EnvironmentVariableTarget]::Machine)
```

#### 更新 Scoop

```ps1con
PS $env:USERPROFILE> scoop update
```

#### 卸载 Scoop

```ps1con
PS $env:USERPROFILE> scoop uninstall scoop
```

### 代理

#### 查看代理

```ps1con
PS $env:USERPROFILE> scoop config proxy
```

#### 配置代理

```ps1con
PS $env:USERPROFILE> scoop config proxy [username:password@]proxy.example.org:49152
```

#### 移除代理

```ps1con
PS $env:USERPROFILE> scoop config rm proxy
```

### 桶

#### 列出已知桶

```ps1con
PS $env:USERPROFILE> scoop bucket known
```

#### 列出已用桶

```ps1con
PS $env:USERPROFILE> scoop bucket list
```

#### 添加桶

```ps1con
PS $env:USERPROFILE> scoop bucket add <name> [repo]
```

#### 移除桶

```ps1con
PS $env:USERPROFILE> scoop bucket rm <name>
```

### 应用

#### 查看状态

```ps1con
PS $env:USERPROFILE> scoop status
```

#### 搜索应用

```ps1con
PS $env:USERPROFILE> scoop search <query>
```

参见 [Scoop Directory: A directory of buckets for the scoop package manager for Windows](https://github.com/rasa/scoop-directory)。

#### 列出本地应用

```ps1con
PS $env:USERPROFILE> scoop list
```

#### 安装应用

```ps1con
PS $env:USERPROFILE> scoop install <app>
```

#### 更新应用

```ps1con
PS $env:USERPROFILE> scoop update {<app>|*}
```

#### 卸载应用

```ps1con
PS $env:USERPROFILE> scoop uninstall <app>
```

<!----------------------------------------------------------------------------->

[Scoop]: https://scoop.sh/
