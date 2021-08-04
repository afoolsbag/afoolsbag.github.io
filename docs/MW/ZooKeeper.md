# ZooKeeper

[ZooKeeper] 是一款分布式协调服务。

参见：

*   [zktools]，一款图形用户界面客户端

## 运行 ZooKeeper

### :material-centos: CentOS 7, 8

#### 安装依赖

1.  安装 OpenJDK 及开发工具

    ``` console
    [sudoer@host *]$ sudo dnf install java-latest-openjdk \
                                      java-latest-openjdk-devel
    ```

#### 下载程序

2.  切换到 `/opt` 目录

    ``` console
    [sudoer@host ~]$ cd /opt
    ```

0.  下载 ZooKeeper 压缩包，参见 [清华大学 ZooKeeper 镜像站](https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/current)，此处以 `3.7.0` 版本为例

    ``` console
    [sudoer@host opt]$ sudo wget https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/current/apache-zookeeper-3.7.0-bin.tar.gz
    ```

0.  解压缩（注意实际版本号）

    ``` console
    [sudoer@host opt]$ sudo tar --extract \
                                --auto-compress \
                                --verbose \
                                --file=apache-zookeeper-3.7.0-bin.tar.gz
    [abbr.          ]$ sudo tar -xavf apache-zookeeper-3.7.0-bin.tar.gz
    ```

0.  建立目录链接（注意实际版本号）

    ``` console
    [sudoer@host opt]$ sudo ln --symbolic \
                               apache-zookeeper-3.7.0-bin \
                               zookeeper
    [abbr.          ]$ sudo ln -s apache-zookeeper-3.7.0-bin zookeeper
    ```

#### 注册服务

6.  创建 `zookeeper` 用户

    ``` console
    [sudoer@host *]$ sudo useradd --comment 'ZooKeeper Server' \
                                  --home-dir /opt/zookeeper \
                                  --no-create-home \
                                  --password !! \
                                  --shell /sbin/nologin \
                                  zookeeper
    ```

0.  切换程序所在目录的所有权（注意实际版本号）

    ``` console
    [sudoer@host *]$ sudo chown --recursive \
                                zookeeper:zookeeper \
                                /opt/apache-zookeeper-3.7.0-bin \
                                /opt/zookeeper
    ```

0.  创建服务单元，参见 [systemd.service 中文手册](http://www.jinbuguo.com/systemd/systemd.service.html)

    ``` console
    [sudoer@host *]$ sudo vim /etc/systemd/system/zookeeper.service
    ```

    ``` ini
    [Unit]
    Description=ZooKeeper Server
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

0.  重新加载服务单元

    ``` console
    [sudoer@host *]$ sudo systemctl daemon-reload
    ```

0.  创建 firewalld 服务描述文件

    ``` text
       Client:? -> 2181:ZooKeeper
    Followers:? -> 2888:Leader
         Peer:? -> 3888:Peer      (leader election phase)
    ```

    ``` console
    [sudoer@host *]$ sudo vim /etc/firewalld/services/zookeeper.xml
    ```

    ``` xml
    <?xml version="1.0" encoding="utf-8"?>
    <service>
      <short>ZooKeeper</short>
      <description>ZooKeeper Server</description>
      <port protocol="tcp" port="2181"/>
      <port protocol="tcp" port="2888"/>
      <port protocol="tcp" port="3888"/>
    </service>
    ```

0.  重新加载 firewalld 服务描述文件

    ``` console
    [sudoer@host *]$ sudo firewall-cmd --reload
    ```

0.  立即启用服务

    ``` console
    [sudoer@host *]$ sudo systemctl enable --now zookeeper
    ```

0.  配置防火墙，开放服务所需端口

    ``` console
    [sudoer@host *]$ sudo firewall-cmd --permanent \
                                       --add-service=zookeeper

    [sudoer@host *]$ sudo firewall-cmd --reload
    ```

#### 配置、启用并确认服务

14. 编辑配置文件

    ``` console
    [sudoer@host *]$ sudo --user=zookeeper \
                          cp /opt/zookeeper/conf/zoo_sample.cfg \
                             /opt/zookeeper/conf/zoo.cfg
    [abbr.        ]$ sudo -u zookeeper cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg

    [sudoer@host *]$ sudo vim /opt/zookeeper/conf/zoo.cfg
    ```

0.  重启服务以使配置生效

    ``` console
    [sudoer@host *]$ sudo systemctl restart zookeeper
    ```

0.  检查进程

    ``` console
    [sudoer@host *]$ sudo jps
    ```

<!----------------------------------------------------------------------------->

[zktools]:   https://blog.csdn.net/rongbaojian/article/details/82078368 "zookeeper 可视化工具"
[ZooKeeper]: https://zookeeper.apache.org/                              "Apache ZooKeeper"
