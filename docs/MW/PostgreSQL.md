# 关系型数据库管理系统 PostgreSQL

官网 <https://www.postgresql.org/>。

## 安装并配置 PostgreSQL
---

### CentOS 7, 8

```sh
# ------------------------------------------------------------------------------
# 安装并启动

# 安装
sudoer@host *> sudo dnf install postgresql-server

# 初始化
sudoer@host *> sudo postgresql-setup --initdb

# 启用并启动
sudoer@host *> sudo systemctl enable postgresql
sudoer@host *> sudo systemctl start postgresql

# ------------------------------------------------------------------------------
# 配置数据库，以允许远程访问

# 修改连接配置：
# 监听来自任何地址的连接请求
sudoer@host *> sudo vim /var/lib/pgsql/data/postgresql.conf
```

```conf
# ......
#listen_addresses = 'localhost'         # what IP address(es) to listen on;
                                        # comma-separated list of addresses;
                                        # defaults to 'localhost'; use '*' for all
                                        # (change requires restart)
listen_addresses = '*'
# ......
```

```sh
# 修改安全认证：
# 允许来自任何地址的 MD5 加密密码的请求（安全隐患，考虑尝试更加安全的 SCRAM 加密方式）
sudoer@host *> sudo vim /var/lib/pgsql/data/pg_hba.conf
```

```conf
# ......
# Put your actual configuration here
# ----------------------------------
host    all             all             0.0.0.0/0               md5
host    all             all             ::/0                    md5
# ......
```

```sh
# 重启服务以使配置生效
sudoer@host *> sudo systemctl restart postgresql

# 配置防火墙，打开 5432 端口
sudoer@host *> sudo firewall-cmd --permanent --add-port=5432/tcp
sudoer@host *> sudo firewall-cmd --reload

# ------------------------------------------------------------------------------
# 配置数据库内的管理员用户，用于远程管理

# 以 postgres 系统用户运行 psql，通过 peer 授权以 postgres 数据库用户登录数据库
sudoer@host *> sudo --user=postgres psql
# abbr.        sudo -u postgres psql
```

```psql
# 创建管理员用户
postgres=# CREATE USER "administrator" PASSWORD 'password'
postgres-# CREATEDB CREATEROLE REPLICATION BYPASSRLS;

# 退出
postgres=# \quit
# abbr.    \q
```

## psql 常用命令
---

### 列出所有数据库

```psql
postgres=# \list
# abbr.    \l
```

### 创建普通用户并分配数据库

```psql
# 创建用户
postgres=# CREATE USER "username" PASSWORD 'password';

# 为用户创建数据库
postgres=# CREATE DATABASE "database" OWNER "username";

# 在该数据库上，授予该用户所有权限
postgres=# GRANT ALL ON DATABASE "database" TO "username";
```

## 可选的，安装并配置 pgAdmin
---

```fish
# pgAdmin

# 更新仓库（https://www.pgadmin.org/download/pgadmin-4-rpm/）
user@host *> sudo rpm --erase pgadmin4-redhat-repo
user@host *> sudo rpm --install https://ftp.postgresql.org/pub/pgadmin/pgadmin4/yum/pgadmin4-redhat-repo-1-1.noarch.rpm

# 安装
user@host *> sudo dnf install pgadmin4-web

# 运行
user@host *> sudo /usr/pgadmin4/bin/setup-web.sh
```
