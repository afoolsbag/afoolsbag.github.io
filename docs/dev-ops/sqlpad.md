# SQLPad

[SQLPad] 是一款用于编写和运行 SQL 查询并将结果可视化的网页应用。

SQLPad 默认通过 `3000` 端口和 `HTTP(S)` 协议提供网页服务。

## 运行 SQLPad

### :material-centos: CentOS 8 一次性运行

``` console
[sudoer@host ~]$ mkdir ~/sqlpad

[sudoer@host ~]$ podman run --name sqlpad \
                            --publish 3000:3000 \
                            --volume ~/sqlpad:/var/lib/sqlpad:z \
                            --detach --rm \
                            sqlpad/sqlpad:5.8.1

[sudoer@host ~]$ sudo firewall-cmd --add-port=3000/tcp
```

<!----------------------------------------------------------------------------->

[SQLPad]: https://rickbergfalk.github.io/sqlpad/
