# 分布式协调服务 ZooKeeper

官网 <https://zookeeper.apache.org/>。

一款图形用户界面客户端 [*zktools*](https://blog.csdn.net/rongbaojian/article/details/82078368)。

## 安装并配置 ZooKeeper
---

### CentOS 7, 8

```sh
# 创建 zookeeper 用户
sudoer@host *> sudo useradd --comment 'ZooKeeper Server' \
                            --home-dir /opt/zookeeper \
                            --no-create-home \
                            --password !! \
                            --shell /sbin/nologin \
                            zookeeper

# 安装 OpenJDK 及开发工具
sudoer@host *> sudo dnf install java-latest-openjdk java-latest-openjdk-devel

# 切换到 /opt 目录
sudoer@host *> cd /opt

# 获取 zookeeper 压缩包
# 参见 <https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/current>
sudoer@host /opt> wget https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/current/apache-zookeeper-3.6.2-bin.tar.gz

# 解压缩，建立链接，切换所有权
sudoer@host /opt> sudo tar -xavf apache-zookeeper-3.6.2-bin.tar.gz
sudoer@host /opt> sudo ln -s apache-zookeeper-3.6.2-bin zookeeper
sudoer@host /opt> sudo chown -R zookeeper:zookeeper apache-zookeeper-3.6.2-bin zookeeper

# 编辑配置文件
sudoer@host /opt> sudo -u zookeeper cp zookeeper/conf/zoo_sample.cfg zookeeper/conf/zoo.cfg
sudoer@host /opt> sudo vim zookeeper/conf/zoo.cfg

# 创建服务单元
# 参见 <http://www.jinbuguo.com/systemd/systemd.service.html>
sudoer@host *> sudo vim /etc/systemd/system/zookeeper.service
```

```
[Unit]
Description=Apache ZooKeeper
After=syslog.target network.target

[Service]
Type=simple

User=zookeeper
Group=zookeeper

ExecStart=/opt/zookeeper/bin/zkServer.sh start-foreground
ExecStop=/opt/zookeeper/bin/zkServer.sh stop

[Install]
WantedBy=multi-user.target
```

```sh
# 重新加载服务单元
sudoer@host *> sudo systemctl daemon-reload

# 启动并启用 zookeeper
sudoer@host *> sudo systemctl start zookeeper
sudoer@host *> sudo systemctl enable zookeeper

# 检查进程
sudoer@host *> sudo jps
```
