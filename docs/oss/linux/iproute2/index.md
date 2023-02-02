# iproute2 网络实用工具集

[iproute2]

## 使用 [iproute2] 维护网络

*   查看服务状态：

    ``` console
    [sudoer@host *]$ systemctl status network
    ```

*   重载所有配置并应用：

    ``` console
    [sudoer@host *]$ sudo systemctl reload-or-restart network
    ```

*   启用网络接口：

    ``` console
    [sudoer@host *]$ sudo ifup <interface-name>
    ```

    将触发 `/etc/sysconfig/network-scripts/ifup-<interface-name>` 脚本，并依据 `/etc/sysconfig/network-scripts/ifcfg-<interface-name>` 进行配置。

*   停用网络接口：

    ``` console
    [sudoer@host *]$ sudo ifdown <interface-name>
    ```

    将触发 `/etc/sysconfig/network-script/ifdown-<interface-name>` 脚本。

*   查找端口占用：

    ``` console
    [sudoer@host ~]$ ss --all --numeric --processes | grep <:port>
    [abbr.        ]$ ss -anp | grep <:port>
    ```

### 典型配置

``` console
[sudoer@host *]$ vim /etc/sysconfig/network-scripts/ifcfg-<interface-name>
```

``` ini
# 动态网络配置
BOOTPROTO=dhcp

# 静态网络配置
BOOTPROTO=static
IPADDR=192.168.0.1
NETMASK=255.255.255.0
GATEWAY=192.168.0.254
DNS1=223.6.6.6
DNS2=8.8.8.8
```

<!----------------------------------------------------------------------------->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"

