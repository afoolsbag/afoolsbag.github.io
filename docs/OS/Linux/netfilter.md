# 数据包过滤框架 netfilter

适用于 Linux 2.4.x 及更高版本内核的数据包过滤框架，官网 <https://www.netfilter.org/>。

## 使用 iptables 管理 netfilter
---

[*iptables 官网*](https://www.netfilter.org/projects/iptables/index.html)。

## 使用 firewalld 管理 netfilter
---

[*firewalld 官网*](https://firewalld.org/)。
CentOS 使用此前端管理 netfilter。

### 常用命令组合

```fish
# 查看服务状态
user@host *> systemctl status firewalld

# 列出所有规则
user@host *> sudo firewall-cmd --list-all

# 查询一条规则
user@host *> sudo firewall-cmd --query-port=<port>/<protocol>

# 持久添加一条规则
user@host *> sudo firewall-cmd --permanent --add-port=<port>/<protocol>

# 持久移除一条规则
user@host *> sudo firewall-cmd --permanent --remove-port=<port>/<protocol>

# 重新加载配置
user@host *> sudo firewall-cmd --reload
```

## 使用 ufw 管理 netfilter
---

[*ufw 官网*](https://wiki.ubuntu.com/UncomplicatedFirewall)。
Ubuntu 使用此前端管理 netfilter。
