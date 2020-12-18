# 数据包过滤框架 netfilter

适用于 Linux 2.4.x 及更高版本内核的数据包过滤框架，官网 <https://www.netfilter.org/>。

## 使用 iptables 管理 netfilter
---

[*iptables 官网*](https://www.netfilter.org/projects/iptables/index.html)。

## 使用 firewalld 管理 netfilter
---

[*firewalld 官网*](https://firewalld.org/)。
CentOS 使用该前端管理 netfilter。

### 常用命令组合

```sh
# 查看服务状态
sudoer@host *> systemctl status firewalld

# 列出所有规则
sudoer@host *> sudo firewall-cmd --list-all

# 列、增、删、查端口规则
sudoer@host *> sudo firewall-cmd --list-ports
sudoer@host *> sudo firewall-cmd --permanent --add-port=<port>/<protocol>
soduer@host *> sudo firewall-cmd --permanent --remove-port=<port>/<protocol>
sudoer@host *> sudo firewall-cmd --query-port=<port>/<protocol>

# 列、增、删、查服务规则
# 缺省服务配置位于 /usr/lib/firewalld/services 目录下
# 系统服务配置位于 /etc/firewalld/services 目录下
sudoer@host *> sudo firewall-cmd --get-services
sudoer@host *> sudo firewall-cmd --list-services
sudoer@host *> sudo firewall-cmd --permanent --add-service=<service>
soduer@host *> sudo firewall-cmd --permanent --remove-service=<service>
sudoer@host *> sudo firewall-cmd --query-service=<service>

# 重新加载配置
sudoer@host *> sudo firewall-cmd --reload
```

## 使用 ufw 管理 netfilter
---

[*ufw 官网*](https://wiki.ubuntu.com/UncomplicatedFirewall)。
Ubuntu 使用此前端管理 netfilter。
