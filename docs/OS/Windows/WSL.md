# 适用于 GNU/Linux 的 Windows 子系统

## 常用命令组合
---

### 维护 `LxssManager` 服务

```cmd
:: 查询服务状态
%USERPROFILE%> SC QUERYEX LxssManager

:: 启动服务
%USERPROFILE%> SC START LxssManager

:: 停止服务
%USERPROFILE%> SC STOP LxssManager

:: 重启服务
%USERPROFILE%> SC STOP LxssManager && TIMEOUT /T 1 /NOBREAK && SC START LxssManager
```

