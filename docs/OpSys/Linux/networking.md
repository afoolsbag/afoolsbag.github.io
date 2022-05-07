# 网络

## 使用 NetworkManager 维护网络

[NetworkManager] 是 :material-redhat: RHEL 选用的默认网络服务。其提供 CLI 工具 `nmcli` 和 TUI 工具 `nmtui`，参见 [Red Hat Enterprise Linux 7 联网指南](https://access.redhat.com/documentation/zh-cn/red_hat_enterprise_linux/7/html/networking_guide/)。

*   查看服务状态：

    ``` console
    [sudoer@host *]$ systemctl status NetworkManager
    ```

*   概览：

    ``` console
    [sudoer@host *]$ nmcli
    ```

*   重载所有配置：

    ``` console
    [sudoer@host *]$ sudo nmcli connection reload
    [abbr.        ]$ sudo nmcli c reload
    ```

*   为指定接口的连接应用配置：

    ``` console
    [sudoer@host *]$ sudo nmcli connection up <interface-name>
    [abbr.        ]$ sudo nmcli c up <interface-name>
    ```

### 使用 TUI 配置网络

!!! danger "危险操作"

    网络配置变动后，远程连接可能断开。

1.  运行 TUI 程序：

    ``` console
    [sudoer@host *]$ sudo nmtui
    ```

0.  在 TUI 中进行配置；

0.  应用配置到网络接口：

    ``` console
    [sudoer@host *]$ sudo nmcli connection up <interface-name>
    [abbr.        ]$ sudo nmcli c up <interface-name>
    ```

## 使用 [systemd-networkd] 维护网络

参见 [systemd-networkd.service 中文手册](http://www.jinbuguo.com/systemd/systemd-networkd.service.html)。

*   查看服务状态：

    ``` console
    [sudoer@host *]$ systemctl status systemd-networkd
    ```

*   概览：

    ``` console
    [sudoer@host *]$ networkctl
    ```

## 使用 [netplan] 维护网络

参见 [Ubuntu 网络配置文档](https://ubuntu.com/server/docs/network-configuration)。

<!----------------------------------------------------------------------------->

[iproute2]:         <https://wiki.linuxfoundation.org/networking/iproute2>                           "networking:iproute2 [Wiki]"
[NetworkManager]:   <https://wiki.gnome.org/Projects/NetworkManager>                                 "Projects/NetworkManager - GNOME Wiki!"
[net-tools]:        <https://net-tools.sourceforge.io/>                                              "net-tools - Project Home"
[netplan]:          <https://netplan.io/>
[systemd-networkd]: <https://www.freedesktop.org/software/systemd/man/systemd-networkd.service.html> "systemd-networkd.service"

*[nmtui]: Network Manager Text-based User Interface
