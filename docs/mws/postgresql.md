# 关系型数据库管理系统 PostgreSQL

官网 <https://www.postgresql.org/>。

## 安装并配置 PostgreSQL
---

### CentOS 7, 8

**注意：PostgreSQL 依据系统的语言环境确定字符编码，若需要 UTF-8 编码则须确保系统语言环境支持。**

*安装并启动：*

1.  安装服务

    ```sh
    sudoer@host *> sudo dnf install postgresql-server
    ```

0.  初始化服务

    ```sh
    sudoer@host *> sudo postgresql-setup --initdb
    ```

0.  立即启用服务

    ```sh
    sudoer@host *> sudo systemctl enable --now postgresql
    ```

0.  配置防火墙，开放服务所需 5432/tcp 端口

    ```sh
    sudoer@host *> sudo firewall-cmd --permanent --add-service=postgresql
    sudoer@host *> sudo firewall-cmd --reload
    ```

*修改配置，以允许远程访问：*

5.  修改连接配置，监听来自任何地址的连接请求

    ```sh
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

0.  修改安全认证，允许来自任何地址的 MD5 加密密码的请求

    ```sh
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

0.  重启服务以使配置生效

    ```sh
    sudoer@host *> sudo systemctl restart postgresql
    ```

*配置数据库内的管理员用户，以允许远程管理：*

8.  以 `postgres` 系统用户运行 `psql`，通过 peer 授权以 `postgres` 数据库用户登录数据库

    ```sh
    sudoer@host *> sudo --user=postgres psql
    ```

0.  创建管理员用户

    ```psql
    postgres=# CREATE USER "administrator" PASSWORD 'password'
    postgres-# CREATEDB CREATEROLE REPLICATION BYPASSRLS;
    ```

0.  退出 `psql`

    ```psql
    postgres=# \quit
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
