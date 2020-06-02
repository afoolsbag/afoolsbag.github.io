# 包管理器 Scoop 和 Chocolatey

适用于 Windows 操作系统的包管理器 Scoop 和 Chocolatey，
Scoop 官网 <https://scoop.sh/>，
Chocolatey 官网 <https://chocolatey.org/>。

## Scoop
---

GitHub Scoop Wiki 上的 [But I already use X, why should I use Scoop?](https://github.com/lukesampson/scoop/wiki/So-What#but-i-already-use-x-why-should-i-use-scoop)

### 安装 Scoop

```ps1
# 修改执行策略
PS $env:USERPROFILE> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# 可选的，配置用户安装路径
PS $env:USERPROFILE> $env:SCOOP='%USERPROFILE%\scoop'
PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('SCOOP', $env:SCOOP, 'User')

# 安装 scoop
PS $env:USERPROFILE> Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# abbr.              Invoke-WebRequest -UseBasicParsing 'get.scoop.sh' | Invoke-Expression
# abbr.              iwr -useb get.scoop.sh | iex

# 添加 extras 桶
PS $env:USERPROFILE> scoop bucket add extras
```

### 维护 Scoop

#### 配置用户安装路径

```ps1
PS $env:USERPROFILE> $env:SCOOP='%USERPROFILE%\scoop'
PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
```

#### 配置全局安装路径

```ps1
PS $env:USERPROFILE> $env:SCOOP_GLOBAL='%PROGRAMDATA%\scoop'
PS $env:USERPROFILE> [System.Environment]::setEnvironmentVariable('SCOOP_GLOBAL', $env:SCOOP_GLOBAL, 'Machine')
```

#### 维护桶

```ps1
PS $env:USERPROFILE> scoop bucket known              # 列出已知桶
PS $env:USERPROFILE> scoop bucket list               # 列出已用桶
PS $env:USERPROFILE> scoop bucket add <name> [repo]  # 添加桶
PS $env:USERPROFILE> scoop bucket rm <name>          # 移除桶
```

#### 更新 scoop

```ps1
PS $env:USERPROFILE> scoop update
```

#### 卸载 scoop

```ps1
PS $env:USERPROFILE> scoop uninstall scoop
```

### 通过 Scoop 维护应用

#### 当前状态

```ps1
PS $env:USERPROFILE> scoop status
```

#### 搜索应用

```ps1
PS $env:USERPROFILE> scoop search <query>
```

#### 列出已安装应用

```ps1
PS $env:USERPROFILE> scoop list
```

#### 安装应用

```ps1
PS $env:USERPROFILE> scoop install <app>
```

#### 更新应用

```ps1
PS $env:USERPROFILE> scoop update <app>  # 更新指定应用
PS $env:USERPROFILE> scoop update *      # 更新全部应用
```

#### 卸载应用

```ps1
PS $env:USERPROFILE> scoop uninstall <app>
```
