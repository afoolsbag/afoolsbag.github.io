# 网络

## 使用 net-tools 维护网络
---

[*net-tools 官网*](http://net-tools.sourceforge.net/)，
[*Linux Foundation Wiki 上的 net-tools 文档*](https://wiki.linuxfoundation.org/networking/net-tools)。

| net-tools         | iproute2      |
|:----------------- |:------------- |
| [`arp`][1]        | `ip neigh`
| [`hostname`][2]   |
| [`ifconfig`][3]   | `ip addr`
| `ipmaddr`         | `ip maddr`
| `iptunnel`        | `ip tunnel`
| [`mii-tool`][6]   | `ethtool`
| [`nameif`][7]     | `ifrename`
| [`netstat`][8]    | `ss`
| [`plipconfig`][9] |
| [`rarp`][10]      |
| [`route`][11]     | `ip route`
| [`slattach`][12]  |

[1]: <http://net-tools.sourceforge.net/man/arp.8.html>
[2]: <http://net-tools.sourceforge.net/man/hostname.1.html>
[3]: <http://net-tools.sourceforge.net/man/ifconfig.8.html>
[6]: <http://net-tools.sourceforge.net/man/mii-tool.8.html>
[7]: <http://net-tools.sourceforge.net/man/nameif.8.html>
[8]: <http://net-tools.sourceforge.net/man/netstat.8.html>
[9]: <http://net-tools.sourceforge.net/man/plipconfig.8.html>
[10]: <http://net-tools.sourceforge.net/man/rarp.8.html>
[11]: <http://net-tools.sourceforge.net/man/route.8.html>
[12]: <http://net-tools.sourceforge.net/man/slattach.8.html>

## 使用 iproute2 维护网络
---

[*iproute2 官网*](https://wiki.linuxfoundation.org/networking/iproute2)。

### 典型配置

```fish
user@host *> vim /etc/sysconfig/network-scripts/ifcfg-<interface-name>
```

```ini
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

### 常用命令组合

#### 配置网络

```fish
# 查看服务状态
user@host *> systemctl status network

# 重载所有配置并应用
user@host *> sudo systemctl reload-or-restart network

# 启用网络接口
user@host *> sudo ifup <interface-name>
# 将触发 /etc/sysconfig/network-scripts/ifup-<interface-name> 脚本
# 并依据 /etc/sysconfig/network-scripts/ifcfg-<interface-name> 进行配置

# 停用网络接口
user@host *> sudo ifdown <interface-name>
# 将触发 /etc/sysconfig/network-script/ifdown-<interface-name> 脚本
```

#### 查找端口占用

```fish
user@host ~> ss --all --numeric --processes | grep <:port>
# abbr.      ss -anp | grep <:port>
```

## 使用 NetworkManager 维护网络
---

[*NetworkManager 官网*](https://wiki.gnome.org/Projects/NetworkManager)，
其提供 CLI 工具 `nmcli` 和 TUI 工具 `nmtui`。

[*Red Hat Enterprise Linux 7 联网指南*](https://access.redhat.com/documentation/zh-cn/red_hat_enterprise_linux/7/html/networking_guide/)。


### 常用命令组合

```fish
# 查看服务状态
user@host *> systemctl status NetworkManager

# 概览
user@host *> nmcli

# 重载所有配置
user@host *> sudo nmcli connection reload
# abbr.      sudo nmcli c reload

# 为指定接口的连接应用配置
user@host *> sudo nmcli connection up <interface-name>
# abbr.      sudo nmcli c up <interface-name>
```

## 使用 systemd-networkd 维护网络
---

[*systemd-networkd 官网*](https://www.freedesktop.org/software/systemd/man/systemd-networkd.service.html)，中译本 [*systemd-networkd.service 中文手册*](http://www.jinbuguo.com/systemd/systemd-networkd.service.html)。


### 常用命令组合

```fish
# 查看服务状态
user@host *> systemctl status systemd-networkd

# 概览
user@host *> networkctl
```

## 使用 netplan 维护网络
---

[*netplan 官网*](https://netplan.io/)。

[*Ubuntu 网络配置文档*](https://ubuntu.com/server/docs/network-configuration)。
