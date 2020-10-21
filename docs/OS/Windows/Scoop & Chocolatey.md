# Scoop & Chocolatey

适用于 Windows 操作系统的包管理器 [Scoop] 和 [Chocolatey]。

Slant 上的 [*Best Windows package managers*](https://www.slant.co/topics/1843/~best-windows-package-managers)。

## Scoop
---

GitHub Scoop Wiki 上的 [*But I already use X, why should I use Scoop?*](https://github.com/lukesampson/scoop/wiki/So-What#but-i-already-use-x-why-should-i-use-scoop)

### 安装

1.  配置执行策略

    ```ps1con
    PS $env:USERPROFILE> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```

0.  可选的，配置用户安装路径

    ```ps1con
    PS $env:USERPROFILE> $env:SCOOP='%USERPROFILE%\scoop'
    PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('SCOOP', $env:SCOOP, [System.EnvironmentVariableTarget]::User)
    ```

0.  安装 Scoop

    ``` ps1con
    PS $env:USERPROFILE> Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh/')
    # abbr.              Invoke-WebRequest -UseBasicParsing 'get.scoop.sh' | Invoke-Expression
    # abbr.              iwr -useb get.scoop.sh | iex
    ```

0.  可选的，安装 aria2 启用多连接下载

    ``` ps1con
    PS $env:USERPROFILE> scoop install aria2
    ```

0.  安装 git 启用 Scoop 自更新

    ``` ps1con
    PS $env:USERPROFILE> scoop install git
    ```

0.  添加 extras 桶

    ``` ps1con
    PS $env:USERPROFILE> scoop bucket add extras
    ```

### 维护

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

#### 配置代理

```ps1con
# 显示当前代理配置
PS $env:USERPROFILE> scoop config proxy

# 配置代理
PS $env:USERPROFILE> scoop config proxy [username:password@]proxy.example.org:49152

# 移除代理
PS $env:USERPROFILE> scoop config rm proxy
```

#### 维护桶

```ps1con
# 列出已知桶
PS $env:USERPROFILE> scoop bucket known

# 列出已用桶
PS $env:USERPROFILE> scoop bucket list

# 添加桶
PS $env:USERPROFILE> scoop bucket add <name> [repo]

# 移除桶
PS $env:USERPROFILE> scoop bucket rm <name>
```

#### 更新

```ps1con
PS $env:USERPROFILE> scoop update
```

#### 卸载

```ps1con
PS $env:USERPROFILE> scoop uninstall scoop
```

### 维护应用

#### 当前状态

```ps1con
PS $env:USERPROFILE> scoop status
```

#### 搜索应用

```ps1con
PS $env:USERPROFILE> scoop search <query>
```

#### 列出已安装应用

```ps1con
PS $env:USERPROFILE> scoop list
```

#### 安装应用

```ps1con
PS $env:USERPROFILE> scoop install <app>
```

#### 更新应用

```ps1con
# 更新指定应用
PS $env:USERPROFILE> scoop update <app>

# 更新全部应用
PS $env:USERPROFILE> scoop update *
```

#### 卸载应用

```ps1con
PS $env:USERPROFILE> scoop uninstall <app>
```

## Chocolatey
---

### 安装

1.  配置执行策略

    ```ps1con
    PS $env:ALLUSERSPROFILE> Set-ExecutionPolicy RemoteSigned -Scope Process -Force
    ```

0.  可选的，配置 Chocolatey 包管理器的安装路径

    ```ps1con
    PS $env:ALLUSERSPROFILE> $env:ChocolateyInstall='%ALLUSERSPROFILE%\Chocolatey'
    PS $env:ALLUSERSPROFILE> [System.Environment]::setEnvironmentVariable('ChocolateyInstall', $env:ChocolateyInstall, [System.EnvironmentVariableTarget]::Machine)
    ```

0.  安装 Chocolatey

    ```ps1con
    PS $env:ALLUSERSPROFILE> Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')
    # abbr.                  Invoke-WebRequest -UseBasicParsing 'chocolatey.org/install.ps1' | Invoke-Expression
    # abbr.                  iwr -useb chocolatey.org/install.ps1 | iex
    ```

### 维护

#### 更新

```ps1con
PS $env:ALLUSERSPROFILE> choco upgrade chocolatey
# abbr.                  cup chocolatey
```

#### 刷新环境变量

```ps1con
PS $env:USERPROFILE> RefreshEnv
```

#### 卸载

Chocolatey 官方文档上的 [*Uninstalling Chocolatey*](https://chocolatey.org/docs/uninstallation)。

### 维护包

#### 搜索包

```ps1con
# 搜索
PS $env:ALLUSERSPROFILE> choco search <filter>

# 信息
PS $env:ALLUSERSPROFILE> choco info <pkg>
```

#### 列出已安装包

```ps1con
PS $env:ALLUSERSPROFILE> choco list --local-only
# abbr.                  clist -l
```

#### 安装包

```ps1con
PS $env:ALLUSERSPROFILE> choco install <pkg> [--install-directory="$env:ProgramFiles"] [--install-arguments='']
# abbr.                  cinst <pkg> [--dir="$env:ProgramFiles"] [--ia='']
```

#### 升级包

```ps1con
# 查询过期应用
PS $env:ALLUSERSPROFILE> choco outdated

# 升级指定应用
PS $env:ALLUSERSPROFILE> choco upgrade <pkg>
# abbr.                  cup <pkg>

# 升级全部应用
PS $env:ALLUSERSPROFILE> choco upgrade all
# abbr.                  cup all
```

#### 卸载包

```ps1con
PS $env:ALLUSERSPROFILE> choco uninstall <pkg>
```

<!----------------------------------------------------------------------------->

[Scoop]:      https://scoop.sh/
[Chocolatey]: https://chocolatey.org/
