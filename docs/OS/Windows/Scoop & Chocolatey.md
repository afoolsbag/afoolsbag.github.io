# 包管理器 Scoop 和 Chocolatey

适用于 Windows 操作系统的包管理器 Scoop 和 Chocolatey，
Scoop 官网 <https://scoop.sh/>，
Chocolatey 官网 <https://chocolatey.org/>。

___
## Scoop

GitHub Scoop Wiki 上的 [But I already use X, why should I use Scoop?](https://github.com/lukesampson/scoop/wiki/So-What#but-i-already-use-x-why-should-i-use-scoop)

### 安装 Scoop

```ps1
# 修改执行策略
PS *> Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# 可选的，配置用户安装路径
PS *> $Env:SCOOP='%USERPROFILE%\scoop'
PS *> [System.Environment]::setEnvironmentVariable('SCOOP', $Env:SCOOP, 'User')

# 安装 scoop
PS *> Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
# ab. Invoke-WebRequest -UseBasicParsing 'get.scoop.sh' | Invoke-Expression
# ab. iwr -useb get.scoop.sh | iex

# 添加 extras 桶
PS *> scoop bucket add extras
```

### 维护 Scoop

#### 配置用户安装路径

```ps1
PS *> $Env:SCOOP='%USERPROFILE%\scoop'
PS *> [System.Environment]::setEnvironmentVariable('SCOOP', $Env:SCOOP, 'User')
```

#### 配置全局安装路径

```ps1
PS *> $Env:SCOOP_GLOBAL='%PROGRAMDATA%\scoop'
PS *> [System.Environment]::setEnvironmentVariable('SCOOP_GLOBAL', $Env:SCOOP_GLOBAL, 'Machine')
```

#### 维护桶

```ps1
PS *> scoop bucket known              # 列出已知桶
PS *> scoop bucket list               # 列出已用桶
PS *> scoop bucket add <name> [repo]  # 添加桶
PS *> scoop bucket rm <name>          # 移除桶
```

#### 更新 scoop

```ps1
PS *> scoop update
```

#### 卸载 scoop

```ps1
PS *> scoop uninstall scoop
```

### 维护应用

#### 当前状态

```ps1
PS *> scoop status
```

#### 搜索应用

```ps1
PS *> scoop search <query>
```

#### 列出已安装应用

```ps1
PS *> scoop list
```

#### 安装应用

```ps1
PS *> scoop install <app>
```

#### 更新应用

```ps1
PS *> scoop update <app>  # 更新指定应用
PS *> scoop update *      # 更新全部应用
```

#### 卸载应用

```ps1
PS *> scoop uninstall <app>
```
