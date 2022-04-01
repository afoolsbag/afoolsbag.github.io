# Cockpit

[Cockpit] 为类 Unix 操作系统提供易于使用的、集成的、一目了然的、开放的基于网页的界面。

Cockpit 默认通过 `9092` 端口和 `HTTP(S)` 协议提供网页服务。

## 运行 Cockpit

### :material-centos: CentOS 8

CentOS 8 预装 Cockpit，启用即可：

``` console
[sudoer@host ~]$ sudo systemctl enable --now cockpit
```

参见 [Running Cockpit — Cockpit Project § CentOS](https://cockpit-project.org/running.html#centos)。

<!----------------------------------------------------------------------------->

[Cockpit]: https://cockpit-project.org/
