# Kafka

[kafka] 是一款分布式消息服务。

*   [*GitOps for Apache Kafka*](https://devshawn.github.io/kafka-gitops/)
*   [*Kafka Tools*](https://kafkatool.com/)，一款图形用户界面客户端
*   [*Apache Kafka: Topic Naming Conventions*](https://devshawn.com/blog/apache-kafka-topic-naming-conventions/)，话题命名风格

## 主题命名约定
---

``` ebnf
(* 主题名 *)
topic name = [data center , '.'] , domain , '.' , classification , '.' , description , '.' , version ;

(* 数据中心 *)
data center    = ? data center ? ;
(* 领域 *)
domain         = ? domain ? ;
(* 类别 *)
classification = "fct" |  (* FaCT 事实， *)
                 "cmd" |  (* CoMmanD 命令 *)
                 "sys" |  (* SYStem 系统 *)
                 ? more ? ;
(* 描述 *)
description    = ? description ? ;
(* 版本 *)
version        = ? number ? ;
```

例如：

``` txt
crawling.fct.anti-crawl-logging
crawling.cmd.do-crawl.0
crawling.cmd.crawl-done.0
```

参见：

*   [*Apache Kafka: Topic Naming Conventions*](https://devshawn.com/blog/apache-kafka-topic-naming-conventions/)

## 安装并配置 Kafka
---

### :material-centos: CentOS 7, 8

**注意：前置需要安装 OpenJDK 和 ZooKeeper，参见[*相关文档*](../ZooKeeper/)。**

#### 下载并解压程序

1.  切换到 `/opt` 目录

    ``` console
    [sudoer@host ~]$ cd /opt
    ```

0.  下载 Kafka 压缩包，参见 <https://mirrors.tuna.tsinghua.edu.cn/apache/kafka>

    ``` console
    [sudoer@host opt]$ sudo wget https://mirrors.tuna.tsinghua.edu.cn/apache/kafka/2.6.0/kafka_2.13-2.6.0.tgz
    ```

0.  解压缩并建立链接

    ``` console
    [sudoer@host /opt]$ sudo tar --extract --auto-compress --verbose --file=kafka_2.13-2.6.0.tgz
    [sudoer@host /opt]$ sudo ln --symbolic kafka_2.13-2.6.0 kafka
    ```

#### 将程序注册为服务

4.  创建 `kafka` 用户

    ``` console
    [sudoer@host ~]$ sudo useradd --comment 'Kafka Server' \
                                  --home-dir /opt/kafka \
                                  --no-create-home \
                                  --password !! \
                                  --shell /sbin/nologin \
                                  kafka
    ```

0.  切换程序所在目录的所有权

    ``` console
    [sudoer@host ~]$ sudo chown --recursive kafka:kafka /opt/kafka_2.13-2.6.0 /opt/kafka
    ```

0.  创建服务单元，参见 <http://www.jinbuguo.com/systemd/systemd.service.html>

    ``` console
    [sudoer@host ~]$ sudo vim /etc/systemd/system/kafka.service
    ```

    ``` toml
    [Unit]
    Description=Kafka Server
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

0.  重新加载服务单元

    ``` console
    [sudoer@host ~]$ sudo systemctl daemon-reload
    ```

0.  创建 firewalld 服务描述文件

    ``` console
    [sudoer@host ~]$ sudo vim /etc/firewalld/services/kafka.xml
    ```

    ``` xml
    <?xml version="1.0" encoding="utf-8"?>
    <service>
      <short>Kafka</short>
      <description>Kafka Server</description>
      <port protocol="tcp" port="9092"/>
    </service>
    ```

0.  重新加载 firewalld 服务描述文件

    ``` console
    [sudoer@host ~]$ sudo firewall-cmd --reload
    ```

0.  立即启用服务

    ``` console
    [sudoer@host ~]$ sudo systemctl enable --now kafka
    ```

0.  配置防火墙，开放服务所需端口

    ``` console
    [sudoer@host ~]$ sudo firewall-cmd --permanent --add-service=kafka
    [sudoer@host ~]$ sudo firewall-cmd --reload
    ```

#### 配置、启用并确认服务

12. 编辑配置文件，配置 Host 使用 IP 地址而非计算机名

    ``` console
    [sudoer@host ~]$ sudo vim /opt/kafka/config/server.properties
    ```

    ``` properties
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

0.  重启服务以使配置生效

    ``` console
    [sudoer@host ~]$ sudo systemctl restart kafka
    ```

0.  检查进程

    ``` console
    [sudoer@host ~]$ sudo jps
    ```

## 常用命令组合
---

假定工作目录为 `/path/to/kafka/bin`。

### `kafka-topics`

#### 列出话题

``` console
[kafka@host bin]$ ./kafka-topics.sh --bootstrap-server <host1:9092>[,host2:9092]... \
                                    --list
```

#### 查看某话题的描述

``` console
[kafka@host bin]$ ./kafka-topics.sh --bootstrap-server <host1:9092>[,host2:9092]... \
                                    --describe --topic <topic>
```

#### 修改某话题的分区数

``` console
[kafka@host bin]$ ./kafka-topics.sh --bootstrap-server <host1:9092>[,host2:9092]... \
                                    --alter --topic <topic> --partitions <number>
```

### `kafka-console-consumer`

#### 查看话题中是否有消息

``` console
[kafka@host bin]$ ./kafka-console-consumer.sh --bootstrap-server <host1:9092>[,host2:9092]... \
                                              --topic <topic> --from-beginning
```

<!----------------------------------------------------------------------------->

[Kafka]: https://kafka.apache.org/
