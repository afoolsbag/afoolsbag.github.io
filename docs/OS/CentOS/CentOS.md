# GNU/Linux 发行版 CentOS 操作系统

官网 <https://centos.org/>。

___
## 安装

___
## 维护：语言环境

```shell
# 可能的，安装语言环境
[user@host *]$ sudo yum install glibc-locale-source
[user@host *]$ sudo yum install glibc-langpack-en

# 可能的，定义语言环境
[user@host *]$ sudo localedef --inputfile=en_US --charmap=UTF-8 --verbose en_US.UTF-8
# abbr.        sudo localedef -i en_US -f UTF-8 -v en_US.UTF-8

# 可能的，修改会话语言环境
[user@host *]$ locale                              # 当前会话语言环境
[user@host *]$ locale --all-locales                # 列出可用语言环境
# abbr.        locale -a
[user@host *]$ vim ~/.bash_profile                 # 设置语言环境
```

```shell
# ~/.bash_profile

LANG="zh_CN.utf8"
```

```shell
# 可能的，修改系统语言环境
[user@host *]$ localectl status                    # 当前系统语言环境
[user@host *]$ localectl list-locales              # 列出可用语言环境
[user@host *]$ sudo localectl set-locale <locale>  # 设置语言环境
```

___
## 维护：网络

[*Red Hat Enterprise Linux 7 联网指南*](https://access.redhat.com/documentation/zh-cn/red_hat_enterprise_linux/7/html/networking_guide/)

```ini
# /etc/sysconfig/network-scripts/ifcfg-en<*>

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

### 使用 NetworkManager 维护网络

NetworkManager 官网 <https://wiki.gnome.org/Projects/NetworkManager>。
其提供一个 CLI 工具 `nmcli` 和一个 TUI 工具 `nmtui`。
其使用的大多数配置位于 `/etc/sysconfig/` 目录下，VPN、移动宽带和 PPPoE 配置位于 `/etc/NetworkManager/` 目录下。

```shell
[user@host *]$ systemctl status NetworkManager  # 查看服务状态

[user@host *]$ nmcli                            # 概览

[user@host *]$ sudo nmcli connection reload     # 重载所有配置
# abbr.        sudo nmcli c reload

[user@host *]$ sudo nmcli connection up <interface-name>  # 为指定接口的连接应用配置
# abbr.        sudo nmcli c up <interface-name>
```

### 使用 network 维护网络

```shell
[user@host *]$ systemctl status network        # 查看服务状态

[user@host *]$ sudo ifconfig                   # 概览

[user@host *]$ sudo systemctl restart network  # 重载所有配置并应用
```
