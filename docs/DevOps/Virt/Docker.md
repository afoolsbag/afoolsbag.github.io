# Docker 容器支持

[:fontawesome-brands-docker: Docker][Docker] 是一套平台即服务（PaaS）产品，它使用操作系统级的虚拟化来交付被称为容器的软件包。[^Docker on Wikipedia]

参见：

*   [Docker 入门教程 - 阮一峰的网络日志](http://www.ruanyifeng.com/blog/2018/02/docker-tutorial.html)
*   [Docker 微服务教程 - 阮一峰的网络日志](https://www.ruanyifeng.com/blog/2018/02/docker-wordpress-tutorial.html)

## 运行 :material-docker: Docker

=== ":fontawesome-brands-centos: CentOS"

    !!! cite inline end

        *   [How to Install and Setup Docker on Centos 8 {Quickstart}](https://phoenixnap.com/kb/how-to-install-docker-on-centos-8)
        *   [Install Docker Engine on CentOS | Docker Documentation](https://docs.docker.com/engine/install/centos/)

    ``` console
    # 卸载旧版 Docker
    [sudoer@host *]$ sudo dnf remove docker \
                                     docker-client \
                                     docker-client-latest \
                                     docker-common \
                                     docker-latest \
                                     docker-latest-logrotate \
                                     docker-logrotate \
                                     docker-engine

    # 更新新版 Docker 仓库
    [sudoer@host *]$ sudo dnf config-manager --add-repo \
                          https://download.docker.com/linux/centos/docker-ce.repo

    # 安装新版 Docker
    [sudoer@host *]$ sudo dnf install docker-ce

    # 启动 Docker 守护进程
    [sudoer@host *]$ sudo systemctl enable --now docker
    ```

=== ":fontawesome-brands-ubuntu: Ubuntu"

    !!! cite inline end

        [Install Docker Engine on Ubuntu | Docker Documentation](https://docs.docker.com/engine/install/ubuntu/)

    ``` console
    # 卸载旧版 Docker
    sudoer@host:*$ sudo aptitude remove docker \
                                        docker-engine \
                                        docker.io \
                                        containerd \
                                        runc

    # 更新索引
    sudoer@host:*$ sudo aptitude update

    # 安装前置依赖
    sudoer@host:*$ sudo aptitude install ca-certificates \
                                         curl \
                                         gnupg \
                                         lsb-release

    # 添加官方 GPG 密钥
    sudoer@host:*$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    # 添加稳定版存储库
    sudoer@host:*$ echo \
                   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
                    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    # 更新索引
    sudoer@host:*$ sudo aptitude update

    # 安装新版 Docker
    sudoer@host:*$ sudo aptitude install docker-ce \
                                         docker-ce-cli \
                                         containerd.io \
                                         docker-compose-plugin
    ```

``` console
# 将当前用户加入 docker 用户组，以免除当前用户对 docker 命令的 sudo 前缀
[sudoer@host *]$ sudo usermod --append --groups docker $USER
[abbr.        ]$ sudo usermod -aG docker $USER
# 重启会话以生效

# 测试
[user@host *]$ docker run --rm hello-world
```

## 运行 Podman

[Podman] 是一个无守护进程的、开源的、Linux 本地的工具，旨在使用 OCI 容器和容器映像轻松查找、运行、构建、共享和部署应用程序。

## 使用 :fontawesome-brands-docker: Docker

### 环境信息

!!! cite inline end

    *   [Use the Docker command line | Docker Documentation](https://docs.docker.com/engine/reference/commandline/cli/)
    *   [docker version | Docker Documentation](https://docs.docker.com/engine/reference/commandline/version/)
    *   [docker info | Docker Documentation](https://docs.docker.com/engine/reference/commandline/info/)

``` console
# 查看版本号
[user@host *]$ docker --version

# 查看版本信息
[user@host *]$ docker version

# 查看系统信息
[user@host *]$ docker info
```

### 镜像仓库

=== ":material-magnify: `search`"

    !!! cite inline end

        *   [Docker Hub](https://hub.docker.com/)
        *   [docker search | Docker Documentation](https://docs.docker.com/engine/reference/commandline/search/)

    ``` console
    # 搜索镜像
    [user@host *]$ docker search <term>
    ```

=== ":material-download: `pull`"

    !!! cite inline end

        *   [docker image pull | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_pull/)
        *   [docker pull | Docker Documentation](https://docs.docker.com/engine/reference/commandline/pull/)

    ``` console
    # 拉取镜像
    [user@host *]$ docker image pull <image>
    [abbr.      ]$ docker pull <image>
    ```

=== ":material-upload: `push`"

    !!! cite inline end

        *   [docker image push | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_push/)
        *   [docker push | Docker Documentation](https://docs.docker.com/engine/reference/commandline/push/)

    ``` console
    # 推送镜像
    [user@host *]$ docker image push <image>
    [abbr.      ]$ docker push <image>
    ```

### 本地镜像

=== ":material-format-list-bulleted: `images`"

    !!! cite inline end

        *   [docker image ls | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_ls/)
        *   [docker images | Docker Documentation](https://docs.docker.com/engine/reference/commandline/images/)

    ``` console
    # 列出本地镜像
    [user@host *]$ docker image ls
    [abbr.      ]$ docker images
    ```

=== ":material-information-variant: `inspect`"

    !!! cite inline end

        *   [docker image inspect | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_inspect/)
        *   [docker inspect | Docker Documentation](https://docs.docker.com/engine/reference/commandline/inspect/)
        *   [docker image history | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_history/)
        *   [docker history | Docker Documentation](https://docs.docker.com/engine/reference/commandline/history/)

    ``` console
    # 查看镜像信息
    [user@host *]$ docker image inspect <container>...
    [abbr.      ]$ docker inspect <container>...

    # 查看镜像历史
    [user@host *]$ docker image history <container>...
    [abbr.      ]$ docker history <container>...
    ```

=== ":material-wrench: `build`"

    !!! cite inline end

        *   [docker image build | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_build/)
        *   [docker build | Docker Documentation](https://docs.docker.com/engine/reference/commandline/build/)
        *   [docker image tag | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_tag/)
        *   [docker tag | Docker Documentation](https://docs.docker.com/engine/reference/commandline/tag/)

    ``` console
    # 依据 Dockerfile 构建镜像
    [user@host *]$ docker image build
    [abbr.      ]$ docker build

    # 为镜像打标签
    [user@host *]$ docker image tag <source-image> <target-image>
    [abbr.      ]$ docker tag <source-image> <target-image>
    ```

=== ":material-import: `load`"

    !!! cite inline end

        *   [docker image load | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_load/)
        *   [docker load | Docker Documentation](https://docs.docker.com/engine/reference/commandline/load/)

    ``` console
    # 从存档导入镜像
    [user@host *]$ docker image load --input <archive.tar[.bz|.gz|.xz]>
    [abbr.      ]$ docker load -i <archive.tar[.bz|.gz|.xz]>
    ```

=== ":material-export: `save`"

    !!! cite inline end

        *   [docker image save | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_save/)
        *   [docker save | Docker Documentation](https://docs.docker.com/engine/reference/commandline/save/)

    ``` console
    # 导出镜像到存档
    [user@host *]$ docker image save --output <archive.tar> <image>
    [abbr.      ]$ docker save -o <archive.tar> <image>

    # 导出镜像到压缩存档
    [user@host *]$ docker image save <image> | gzip > <archive.tgz>
    [abbr.      ]$ docker save <image> | gzip > <archive.tgz>
    ```

=== ":material-minus: `rmi`"

    !!! cite inline end

        *   [docker image rm | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_rm/)
        *   [docker rmi | Docker Documentation](https://docs.docker.com/engine/reference/commandline/rmi/)
        *   [docker image prune | Docker Documentation](https://docs.docker.com/engine/reference/commandline/image_prune/)

    ``` console
    # 移除镜像
    [user@host *]$ docker image rm <image>
    [abbr.      ]$ docker rmi <image>
    
    # 移除未使用的镜像
    [user@host *]$ docker image prune
    ```

### 容器管理

=== ":material-plus: `create`"

    !!! cite inline end

        *   [docker create | Docker Documentation](https://docs.docker.com/engine/reference/commandline/create/)
        *   [Docker run reference | Docker Documentation](https://docs.docker.com/engine/reference/run/)

    ``` console
    # 新建容器
    [user@host *]$ docker container create [--name <name>] \
                                           [--link <other-container>[:alias]] \
                                           [--publish <local-port>:<container-port>] \
                                           [--volume </local/path>:</container/path>:z] \
                                           <image>
    [abbr.      ]$ docker create [--name <name>] \
                                 [--link <other-container>[:alias]] \
                                 [-p <local-port>:<container-port>] \
                                 [-v </local/path>:</container/path>:z] \
                                 <image>
    ```

=== ":material-information-variant: `ps`"

    !!! cite inline end

        *   [docker ps | Docker Documentation](https://docs.docker.com/engine/reference/commandline/ps/)
        *   [docker inspect | Docker Documentation](https://docs.docker.com/engine/reference/commandline/inspect/)
        *   [docker stats | Docker Documentation](https://docs.docker.com/engine/reference/commandline/stats/)

    ``` console
    # 列出容器
    [user@host *]$ docker container ls [--all]
    [abbr.      ]$ docker ps [-a]

    # 查看容器信息
    [user@host *]$ docker container inspect <container>...
    [abbr.      ]$ docker inspect <container>...

    # 查看容器端口映射
    [user@host *]$ docker container port <container>...
    [abbr.      ]$ docker port <container>...

    # 查看容器运行状态
    [user@host *]$ docker container stats [<container>...]
    [abbr.      ]$ docker stats [<container>...]
    ```

=== ":material-play: `start`"

    !!! cite inline end

        [docker start | Docker Documentation](https://docs.docker.com/engine/reference/commandline/start/)

    ``` console
    # 运行容器
    [user@host *]$ docker container start <container>
    [abbr.      ]$ docker start <container>
    ```

=== ":material-stop: `stop`"

    !!! cite inline end

        *   [docker stop | Docker Documentation](https://docs.docker.com/engine/reference/commandline/stop/)
        *   [docker kill | Docker Documentation](https://docs.docker.com/engine/reference/commandline/kill/)

    ``` console
    # 停止容器，先发出 `SIGTERM` 信号，超时后再发出 `SIGKILL` 信号
    [user@host *]$ docker container stop <container>
    [abbr.      ]$ docker stop <container>

    # 杀死容器，直接发出 `SIGKILL` 信号
    [user@host *]$ docker container kill <container>
    [abbr.      ]$ docker kill <container>
    ```

=== ":material-restart: `restart`"

    !!! cite inline end

        [docker restart | Docker Documentation](https://docs.docker.com/engine/reference/commandline/restart/)

    ``` console
    # 重启容器
    [user@host *]$ docker container restart <container>
    [abbr.      ]$ docker restart <container>
    ```

=== ":material-camera: `commit`"

    !!! cite inline end

        [docker commit | Docker Documentation](https://docs.docker.com/engine/reference/commandline/commit/)

    ``` console
    # 提交快照
    [user@host *]$ docker container commit <container> [<image>[:<tag>]]
    [abbr.      ]$ docker commit <container> [<image>[:<tag>]]
    ```

=== ":material-minus: `rm`"

    !!! cite inline end

        *   [docker rm | Docker Documentation](https://docs.docker.com/engine/reference/commandline/rm/)
        *   [docker container prune | Docker Documentation](https://docs.docker.com/engine/reference/commandline/container_prune/)

    ``` console
    # 移除容器
    [user@host *]$ docker container rm <container>
    [abbr.      ]$ docker rm <container>

    # 移除已停止的容器
    [user@host *]$ docker container prune
    ```

=== ":material-test-tube: `run`"

    !!! cite inline end

        *   [docker run | Docker Documentation](https://docs.docker.com/engine/reference/commandline/run/)
        *   `193.0.14.129` 是根域名服务器 K 的 IPv4 地址。
        *   根域名服务器 K 位于伦敦，由欧洲 IP 网络资源协调中心（RIPE NCC）管理，参见 [IANA — Root Servers](https://www.iana.org/domains/root/servers)。

    ``` console
    # 创建一次性容器并运行
    [user@host *]$ docker container run [--detach] --rm <image>
    [abbr.      ]$ docker run [-d] --rm <image>

    # 创建一次性容器并连接容器内壳层
    [user@host *]$ docker container run --interactive --tty --rm <image> <bash>
    [abbr.      ]$ docker run -it --rm <image> <bash>

    # 测试容器内网络
    [user@host *]$ docker run --rm busybox ping -c 1 193.0.14.129

    # 测试容器内域名解析
    [user@host *]$ docker run --rm busybox nslookup k.root-servers.net
    ```

### 容器内

=== "`logs`"

    !!! cite inline end

        [docker logs | Docker Documentation](https://docs.docker.com/engine/reference/commandline/logs/)

    ``` console
    # 查看容器内输出
    [user@host *]$ docker container logs <container>
    [abbr.      ]$ docker logs <container>
    ```

=== "`exec`"

    !!! cite inline end

        [docker exec | Docker Documentation](https://docs.docker.com/engine/reference/commandline/exec/)

    ``` console
    # 运行容器内程序
    [user@host *]$ docker container exec <container> <command>
    [abbr.      ]$ docker exec <container> <command>

    # 运行容器内壳层，并附加到当前壳层
    [user@host *]$ docker container exec --interactive --tty <container> bash
    [abbr.      ]$ docker exec -it <container> bash
    ```

=== "`cp`"

    !!! cite inline end

        [docker cp | Docker Documentation](https://docs.docker.com/engine/reference/commandline/cp/)

    ``` console
    # 从容器内复制出容器外
    [user@host *]$ docker container cp <container>:</container/path> </local/path>
    [abbr.      ]$ docker cp <container>:</container/path> </local/path>

    # 从容器外复制进容器内
    [user@host *]$ docker container cp </local/path> <container>:</container/path>
    [abbr.      ]$ docker cp </local/path> <container>:</container/path>
    ```

=== "`top`"

    !!! cite inline end

        [docker top | Docker Documentation](https://docs.docker.com/engine/reference/commandline/top/)

    ``` console
    # 查看容器内运行状态
    [user@host *]$ docker container top <container>
    [abbr.      ]$ docker top <container>
    ```

## Dockerfile

!!! cite inline end

    [Dockerfile reference | Docker Documentation](https://docs.docker.com/engine/reference/builder/)

``` console
# 依据 Dockerfile 构建镜像
[user@host *]$ docker builder build --tag <image>[:tag] <path>
[abbr.      ]$ docker build -t <image>[:tag] <path>
```

``` dockerfile title="Dockerfile"
--8<-- "includes/DevOps/Docker/Dockerfile"
```

## docker-compose.yml

=== ":material-play: `up`"

    !!! cite inline end

        [docker-compose up | Docker Documentation](https://docs.docker.com/compose/reference/up/)

    ``` console
    [user@host *]$ docker compose up [--detach]
    [abbr.      ]$ docker compose up [-d]
    ```

=== ":material-stop: `down`"

    !!! cite inline end

        [docker-compose down | Docker Documentation](https://docs.docker.com/compose/reference/down/)

    ``` console
    [user@host *]$ docker compose down
    ```

!!! cite inline end

    [Compose specification | Docker Documentation](https://docs.docker.com/compose/compose-file/)

``` yaml title="docker-compose.yml"
--8<-- "includes/DevOps/Docker/docker-compose.yml"
```

<!----------------------------------------------------------------------------->

[^Docker on Wikipedia]: [Docker (software) - Wikipedia](https://wikipedia.org/wiki/Docker_(software))

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
