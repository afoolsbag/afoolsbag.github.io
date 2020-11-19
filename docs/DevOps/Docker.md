# Docker

[Docker] 是一套平台即服务（PaaS）产品，它使用操作系统级的虚拟化来交付被称为容器的软件包。

参见：

*   [Docker 入门教程 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2018/02/docker-tutorial.html)
*   [Docker 微服务教程 - 阮一峰的网络日志](https://www.ruanyifeng.com/blog/2018/02/docker-wordpress-tutorial.html)

## 运行 Docker

### :material-centos: CentOS 8

!!! hint

    也许需要的是 [Podman](../Podman/)？

``` console
[sudoer@host ~]$ sudo dnf remove docker \
                                 docker-client \
                                 docker-client-latest \
                                 docker-common \
                                 docker-latest \
                                 docker-latest-logrotate \
                                 docker-logrotate \
                                 docker-engine

[sudoer@host ~]$ sudo dnf config-manager --add-repo \
                      https://download.docker.com/linux/centos/docker-ce.repo

[sudoer@host ~]$ sudo dnf install docker-ce

[sudoer@host ~]$ sudo systemctl enable --now docker

[sudoer@host ~]$ sudo docker run hello-world
```

参见 [How to Install and Setup Docker on Centos 8 {Quickstart}](https://phoenixnap.com/kb/how-to-install-docker-on-centos-8)；  
参见 [Install Docker Engine on CentOS | Docker Documentation](https://docs.docker.com/engine/install/centos/)。

<!----------------------------------------------------------------------------->

[^Docker on Wikipedia]: [Docker (software) - Wikipedia](https://wikipedia.org/wiki/Docker_(software))

[Docker]: https://www.docker.com/

*[PaaS]: Platform as a Service

<!--

## 安装 Docker
---

### 使用 dnf 安装 Docker

```fish
# 安装 yum-utils 工具
user@host *> sudo dnf install yum-utils

# 启用 docker-ce 源
user@host *> sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 安装 Docker 引擎、命令行工具和容器运行时
user@host *> sudo dnf install docker-ce docker-ce-cli containerd.io

# 将 Docker 网桥标记至信任域
user@host *> sudo firewall-cmd --permanent --zone=trusted --change-interface=docker0
```

### 启动 Docker 服务

```fish
# 启动 Docker 服务
user@host *> sudo systemctl start docker

# 测试 Docker 是否安装正确
user@host *> sudo docker run hello-world

# 将当前用户加入 docker 用户组，以免除当前用户对 docker 命令的 sudo 前缀
user@host *> sudo usermod --append --groups docker $USER
# abbr.      sudo usermod -aG docker $USER
# 重新登陆以生效
```

### 在 GNU/Linux 安装 Docker Compose

```bash
# 下载 docker-compose
$ sudo curl --output /usr/local/bin/docker-compose \
            --location "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname --kernel-name)-$(uname --machine)"
```

```fish
# 赋予 docker-compose 可执行权限
user@host *> sudo chmod +x /usr/local/bin/docker/compose

# 验证 docker-compose 可执行
user@host *> docker-compose --version
```

## 常用命令组合
---

```fish
# 查看 Docker 版本
user@host *> docker --version
# 详细信息
user@host *> docker version
# 系统信息
user@host *> docker info

# 从镜像新建一个容器，在容器结束时自动删除容器文件
user@host *> docker container run --rm <image>
# abbr.      docker run --rm <image>

# ……并且在后台运行
user@host *> docker container run --detach --rm <image>
# abbr.      docker run -d --rm <image>

# 测试容器网络
user@host *> docker run --rm busybox ping -c 1 193.0.14.129
# 测试容器域名解析
user@host *> docker run --rm busybox nslookup k.root-servers.net
# 根域名服务器 K，位于伦敦，由欧洲IP网络资源协调中心（RIPE NCC）管理
# 见 https://www.iana.org/domains/root/servers
```

### 镜像（`image`）

[*官方的 Docker 镜像托管网站*](https://hub.docker.com/)。

```fish
# 列出镜像文件
user@host *> docker image ls
# abbr.      docker images

# 拉取镜像文件
user@host *> docker image pull <image>
# abbr.      docker pull <image>

# 移除镜像文件
user@host *> docker image rm <image>
# abbr.      docker rmi <image>

# 从镜像文件导出归档
user@host *> docker image save --output <archive.tar> <image>
# abbr.      docker save -o <archive.tar> <image>

# 或者导出为压缩归档
user@host *> docker image save <image> | gzip > <archive.tgz>
# abbr.      docker save <image> | gzip > <archive.tgz>

# 从归档文件导入镜像
user@host *> docker image load --input <archive.tar[.bz|.gz|.xz]>
# abbr.      docker load -i <archive.tar[.bz|.gz|.xz]>
```

### 容器（`container`）

镜像和容器

```fish
# 列出正在运行的容器
user@host *> docker container ls
# abbr.      docker ps

# 列出所有容器（文件），包括未在运行的容器
user@host *> docker container ls --all
# abbr.      docker ps -a

# 从镜像新建容器并运行，若镜像不存在将尝试拉取镜像
user@host *> docker container run <image>
# abbr.      docker run <image>

# 强制停止容器
user@host *> docker container kill <container>
# abbr.      docker kill <container>

# 移除容器文件
user@host *> docker container rm <container>
# abbr.      docker rm <container>
```

运行时容器

```fish
# 查看容器输出
user@host *> docker container logs <container>
# abbr.      docker logs <container>

# 运行容器内程序
user@host *> docker container exec <container> <command>
# abbr.      docker exec <container> <command>

# 运行容器内壳层，并附加到当前壳层
user@host *> docker container exec --interactive --tty <container> bash
# abbr.      docker exec -it <container> bash

# 容器内外文件复制
user@host *> docker container cp <container>:</path/to/file> </local/path/to/file>
# abbr.      docker cp <container>:</path/to/file> </local/path/to/file>
user@host *> docker container cp </local/path/to/file> <container>:</path/to/file>
# abbr.      docker cp </local/path/to/file> <container>:</path/to/file>

# 停止容器，先发出 SIGTERM 信号，一段时间后再发出 SIGKILL 信号
user@host *> docker container stop <container>
# abbr.      docker stop <container>

# 运行停止的容器
user@host *> docker container start <container>
# abbr.      docker start <container>

# 重新运行容器
user@host *> docker container restart <container>
# abbr.      docker restart <container>
```

容器输入输出映射

```fish
# 容器停止后自动删除容器文件
user@host *> docker container run --rm <image>
# abbr.      docker run --rm <image>

# 将容器内壳层与当前壳层绑定
user@host *> docker container run --interactive --tty <image> bash
# abbr.      docker run -it <image> bash

# 将本机的 49152 端口与容器的 80 端口绑定
user@host *> docker container run --publish <49152>:<80> <image>
# abbr.      docker run -p <49152>:<80> <image>

# 将本机的 /local/path/to/file 与容器的 /container/path/to/file 绑定
user@host *> docker container run --volume </local/path/to/file>:</container/path/to/file> <image>
# abbr.      docker run -v </local/path/to/file>:</container/path/to/file> <image>

# 生成一个本机匿名路径，形如 /var/lib/docker/volumes/.../_data，将其与容器的 /container/path/to/file 绑定
user@host *> docker container run --volume </container/path/to/file> <image>
# abbr.      docker run -v </container/path/to/file> <image>
```

### 构建（`builder`）

```fish
# 依据 Dockerfile 构建镜像
user@host *> docker builder build --tag <name>[:tag] <path>
# abbr.      docker build -t <name>[:tag] <path>
```

### 构成（`compose`）

## `Dockerfile`
---

[*Docker Documentation 上的 Dockerfile reference*](https://docs.docker.com/engine/reference/builder/)。

```dockerfile
#-------------------------------------------------------------------------------
# 编译时
FROM scratch AS build-time

# 简单地将本机文件复制到容器文件
# COPY <host-src> <container-dst>

# 不同于简单复制，ADD 允许 <host-src> 为链接地址，且若 <host-src> 是本机压缩文件，ADD 会自动将其解压
# ADD <host-src> <container-dst>

# 运行命令
# RUN <command>

# 假定 /build/hello-world 是编译生成的产品
COPY --from=hello-world /hello /build/hello-world

#-------------------------------------------------------------------------------
# 运行时
FROM scratch AS run-time

# 复制编译时 /build 目录到运行时 /dist 目录
COPY --from=build-time /build /dist

# 配置环境变量
# ENV KEY VALUE

# 设定工作目录
# WORKDIR /dist

# 设定开放的端口
# EXPOSE 80[/tcp]

# 设定映射的数据卷，若在命令中未指定对应的本机路径，将创建本机匿名路径与其映射
# VOLUME /data

# 程序入口点，可以被 docker run 的 --entrypoint 选项覆盖
ENTRYPOINT [ "exec" ]
# ENTRYPOINT [ "/bin/sh", "-c" ]

# 默认命令，可以被 docker run 的 [command] 参数覆盖
CMD [ "/app/hello-world" ]
```

## `docker-compose.yml`
---

[*Docker Documentation 上的 Compose file reference*](https://docs.docker.com/compose/compose-file/)

```yml
version: "3.8"
services:

  <service-name>:
    image: <image-name>
    ports:
      - "<host>:<container>[/{tcp|udp}]"
    volumes:
      - "<host>:<container>[:{rw|ro}]"
```

-->
