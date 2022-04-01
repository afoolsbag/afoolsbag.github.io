# WSL

[WSL] 是适用于 GNU/Linux 的 Windows 子系统。

## `wsl` 命令

### 列出分发

``` doscon
%USERPROFILE%> wsl --list [--verbose]
abbr.        > wsl -l [-v]
```

### 运行分发

``` doscon
%USERPROFILE%> wsl [--distribution <分发版>]
abbr.        > wsl [-d <分发版>]
```

设定默认分发：

``` doscon
%USERPROFILE%> wsl --set-default <分发版>
abbr.        > wsl -s <分发版>
```

### 终止分发

``` doscon
%USERPROFILE%> wsl --terminate <分发版>
abbr.        > wsl -t <分发版>
```

终止所有分发并停止虚拟机：

``` doscon
%USERPROFILE%> wsl --shutdown
```

### WSL 版本

设定指定分发的版本：

``` doscon
%USERPROFILE%> wsl --set-version <分发版> <版本>
```

设定新分发的默认版本：

``` doscon
%USERPROFILE%> wsl --set-default-version <版本>
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
