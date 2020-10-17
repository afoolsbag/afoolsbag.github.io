# 分布式消息服务 Kafka

官网 <https://kafka.apache.org/>。

*   [*GitOps for Apache Kafka*](https://devshawn.github.io/kafka-gitops/)
*   [*Kafka Tools*](https://kafkatool.com/)，一款图形用户界面客户端
*   [*Apache Kafka: Topic Naming Conventions*](https://devshawn.com/blog/apache-kafka-topic-naming-conventions/)，话题命名风格

## 安装并配置 Kafka
---

前置需要安装 OpenJDK 和 ZooKeeper，参见[*相关文档*](../ZooKeeper)。

### CentOS 7, 8

```sh
# 创建 kafka 用户
sudoer@host *> sudo useradd --comment 'Kafka Server' \
                            --home-dir /opt/kafka \
                            --no-create-home \
                            --password !! \
                            --shell /sbin/nologin \
                            kafka

# 切换到 /opt 目录
sudoer@host *> cd /opt

# 获取 zookeeper 压缩包
# 参见 <https://mirrors.tuna.tsinghua.edu.cn/apache/kafka>
sudoer@host /opt> sudo wget https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.6.0/kafka_2.13-2.6.0.tgz

# 解压缩，建立链接，切换所有权
sudoer@host /opt> sudo tar -xavf kafka_2.13-2.6.0.tgz
sudoer@host /opt> sudo ln -s kafka_2.13-2.6.0 kafka
sudoer@host /opt> sudo chown -R kafka:kafka kafka_2.13-2.6.0 kafka

# 编辑配置文件，配置 Host 使用 IP 地址而非计算机名
sudoer@host /opt> sudo vim kafka/config/server.properties
```

```toml
# /opt/kafka/config/server.properties

# ......
# The address the socket server listens on. It will get the value returned from 
# java.net.InetAddress.getCanonicalHostName() if not configured.
#   FORMAT:
#     listeners = listener_name://host_name:port
#   EXAMPLE:
#     listeners = PLAINTEXT://your.host.name:9092
#listeners=PLAINTEXT://:9092

# Hostname and port the broker will advertise to producers and consumers. If not set, 
# it uses the value for "listeners" if configured.  Otherwise, it will use the value
# returned from java.net.InetAddress.getCanonicalHostName().
#advertised.listeners=PLAINTEXT://your.host.name:9092
advertised.listeners=PLAINTEXT://192.0.2.1:9092
# ......
```

```sh
# 创建服务单元
# 参见 <http://www.jinbuguo.com/systemd/systemd.service.html>
sudoer@host *> sudo vim /etc/systemd/system/kafka.service
```

```toml
# /etc/systemd/system/kafka.service

[Unit]
Description=Apache Kafka
Requires=zookeeper.service
After=zookeeper.service

[Service]
Type=simple

User=kafka
Group=kafka

ExecStart=/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties
ExecStop=/opt/kafka/bin/kafka-server-stop.sh

[Install]
WantedBy=multi-user.target
```

```sh
# 重新加载服务单元
sudoer@host *> sudo systemctl daemon-reload

# 立即启用 Kafka 
sudoer@host *> sudo systemctl enable --now kafka

# 检查进程
sudoer@host *> sudo jps

# 配置防火墙，打开 9092 端口
sudoer@host *> sudo firewall-cmd --permanent --add-port=9092/tcp
sudoer@host *> sudo firewall-cmd --reload
```

## 常用命令组合
---

```fish
user@host ~> cd kafka/bin

# 列出可用话题
user@host ~/k/bin> ./kafka-topics.sh --bootstrap-server <host1:9092>[,host2:9092]... --list

# 查看某话题的描述
user@host ~/k/bin> ./kafka-topics.sh --bootstrap-server <host1:9092>[,host2:9092]... --describe --topic <topic>

# 查看话题中是否有消息
user@host ~/k/bin> ./kafka-console-consumer.sh --bootstrap-server <host1:9092>[,host2:9092]... --topic <topic> --from-beginning
```
