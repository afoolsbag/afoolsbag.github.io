# WSL

[WSL] 是适用于 GNU/Linux 的 Windows 子系统。

## `wsl` 命令

### 列出分发

``` doscon
%USERPROFILE%> wsl --list [--verbose]
abbr.        > wsl -l [-v]
```

## `LxssManager` 服务

### 查询服务状态

``` doscon
%USERPROFILE%> SC QUERYEX LxssManager
```

### 启动服务

``` doscon
%USERPROFILE%> SC START LxssManager
```

### 停止服务

``` doscon
%USERPROFILE%> SC STOP LxssManager
```

### 重启服务

``` doscon
%USERPROFILE%> SC STOP LxssManager && TIMEOUT /T 1 /NOBREAK && SC START LxssManager
```

<!----------------------------------------------------------------------------->

[WSL]: https://blogs.msdn.microsoft.com/wsl/

*[WSL]: Windows Subsystem for Linux
