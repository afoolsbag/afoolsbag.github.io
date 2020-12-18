# Podman

[Podman] 是一个无守护进程的、开源的、Linux 本地的工具，旨在使用 OCI 容器和容器映像轻松查找、运行、构建、共享和部署应用程序。

## `podman` 命令

### 版本和系统信息

#### 查看版本号

``` console
[user@host ~]$ podman --version
```

#### 查看版本信息

``` console
[user@host ~]$ podman version
```

参见 [docker version | Docker Documentation](https://docs.docker.com/engine/reference/commandline/version/)。

#### 查看系统信息

``` console
[user@host ~]$ podman info
```

参见 [docker info | Docker Documentation](https://docs.docker.com/engine/reference/commandline/info/)。

### 镜像

#### 搜索镜像

``` console
[user@host ~]$ podman search <term>
```

参见 [docker search | Docker Documentation](https://docs.docker.com/engine/reference/commandline/search/)。

#### 列出本地镜像

``` console
[user@host ~]$ podman image ls
[abbr.      ]$ podman images
```

参见 [docker images | Docker Documentation](https://docs.docker.com/engine/reference/commandline/images/)。

#### 拉取镜像

``` console
[user@host ~]$ podman image pull <image>
[abbr.      ]$ podman pull <image>
```

参见 [docker pull | Docker Documentation](https://docs.docker.com/engine/reference/commandline/pull/)。

#### 移除镜像

``` console
[user@host ~]$ podman image rm <image>
[abbr.      ]$ podman rmi <image>
```

参见 [docker rmi | Docker Documentation](https://docs.docker.com/engine/reference/commandline/rmi/)。

#### 导出镜像

将镜像导出为归档：

``` console
[user@host ~]$ podman image save --output <archive.tar> <image>
[abbr.      ]$ podman save -o <archive.tar> <image>
```

或导出为压缩归档：

``` console
[user@host ~]$ podman image save <image> | gzip > <archive.tgz>
[abbr.      ]$ podman save <image> | gzip > <archive.tgz>
```

参见 [docker save | Docker Documentation](https://docs.docker.com/engine/reference/commandline/save/)。

#### 导入镜像

``` console
[user@host ~]$ podman image load --input <archive.tar[.bz|.gz|.xz]>
[abbr.      ]$ podman load -i <archive.tar[.bz|.gz|.xz]>
```

参见 [docker load | Docker Documentation](https://docs.docker.com/engine/reference/commandline/load/)。

### 镜像和容器

#### 从镜像创建容器

``` console
[user@host ~]$ podman container create <image>
[abbr.      ]$ podman create <image>
```

将本机的 `49152` 端口与容器的 `80` 端口绑定：

``` console
[user@host ~]$ podman container create --publish <49152>:<80> <image>
[abbr.      ]$ podman create -p <49152>:<80> <image>
```

将本机的 `/local/path` 与容器的 `/container/path` 绑定：

``` console
[user@host ~]$ podman container create --volume </local/path>:</container/path>:z <image>
[abbr.      ]$ podman create -v </local/path>:</container/path>:z <image>
```

生成一个本机匿名路径，将其与容器的 `/container/path` 绑定：

``` console
[user@host ~]$ podman container create --volume </container/path> <image>
[abbr.      ]$ podman create -v </container/path> <image>
```

参见 [Docker run reference | Docker Documentation](https://docs.docker.com/engine/reference/run/)；  
参见 [docker create | Docker Documentation](https://docs.docker.com/engine/reference/commandline/create/)。

#### 一次性运行镜像

若镜像不存在则拉取镜像，然后从镜像创建容器并运行，并在容器停止后自动删除容器：

``` console
[user@host ~]$ podman container run --rm <image>
[abbr.      ]$ podman run --rm <image>
```

或在后台运行：

``` console
[user@host ~]$ podman container run --detach --rm <image>
[abbr.      ]$ podman run -d --rm <image>
```

或不运行默认命令，而是连接容器内壳层，以便手动运行命令：

``` console
[user@host ~]$ podman container run --interactive --tty --rm <image> bash
[abbr.      ]$ podman run -it --rm <image> bash
```

参见 [docker run | Docker Documentation](https://docs.docker.com/engine/reference/commandline/run/)。

#### 测试容器内网络

``` console
[user@host ~]$ podman run --rm busybox ping -c 1 193.0.14.129
```

`193.0.14.129` 是根域名服务器 K 的 IPv4 地址。

#### 测试容器内域名解析

``` console
[user@host ~]$ podman run --rm busybox nslookup k.root-servers.net
```

根域名服务器 K 位于伦敦，由欧洲 IP 网络资源协调中心（RIPE NCC）管理；  
参见 [IANA — Root Servers](https://www.iana.org/domains/root/servers)。

### 容器

#### 列出容器

列出正在运行的容器：

``` console
[user@host ~]$ podman container ls
[abbr.      ]$ podman ps
```

或列出所有容器：

``` console
[user@host ~]$ podman container ls --all
[abbr.      ]$ podman ps -a
```

参见 [docker ps | Docker Documentation](https://docs.docker.com/engine/reference/commandline/ps/)。

#### 停止容器

先发出 `SIGTERM` 信号，超时后再发出 `SIGKILL` 信号：

``` console
[user@host ~]$ podman container stop <container>
[abbr.      ]$ podman stop <container>
```

或者直接发出 `SIGKILL` 信号：

``` console
[user@host ~]$ podman container kill <container>
[abbr.      ]$ podman kill <container>
```

参见 [docker stop | Docker Documentation](https://docs.docker.com/engine/reference/commandline/stop/)；  
参见 [docker kill | Docker Documentation](https://docs.docker.com/engine/reference/commandline/kill/)。

#### 运行容器

``` console
[user@host ~]$ podman container start <container>
[abbr.      ]$ podman start <container>
```

参见 [docker start | Docker Documentation](https://docs.docker.com/engine/reference/commandline/start/)。

#### 重启容器

``` console
[user@host ~]$ podman container restart <container>
[abbr.      ]$ podman restart <container>
```

参见 [docker restart | Docker Documentation](https://docs.docker.com/engine/reference/commandline/restart/)。

#### 移除容器

``` console
[user@host ~]$ podman container rm <container>
[abbr.      ]$ podman rm <container>
```

参见 [docker rm | Docker Documentation](https://docs.docker.com/engine/reference/commandline/rm/)。

### 容器内

#### 查看容器内输出

``` console
[user@host ~]$ podman container logs <container>
[abbr.      ]$ podman logs <container>
```

参见 [docker logs | Docker Documentation](https://docs.docker.com/engine/reference/commandline/logs/)。

#### 运行容器内程序

``` console
[user@host ~]$ podman container exec <container> <command>
[abbr.      ]$ podman exec <container> <command>
```

运行容器内壳层，并附加到当前壳层：

``` console
[user@host ~]$ podman container exec --interactive --tty <container> bash
[abbr.      ]$ podman exec -it <container> bash
```

参见 [docker exec | Docker Documentation](https://docs.docker.com/engine/reference/commandline/exec/)。

#### 容器内外文件复制

从容器内复制出容器外：

``` console
[user@host ~]$ podman container cp <container>:</container/path> </local/path>
[abbr.      ]$ podman cp <container>:</container/path> </local/path>
```

从容器外复制进容器内：

``` console
[user@host ~]$ podman container cp </local/path> <container>:</container/path>
[abbr.      ]$ podman cp </local/path> <container>:</container/path>
```

参见 [docker cp | Docker Documentation](https://docs.docker.com/engine/reference/commandline/cp/)。

<!----------------------------------------------------------------------------->

[Podman]: https://podman.io/

*[OCI]: Open Containers Initiative
