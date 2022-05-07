#-------------------------------------------------------------------------------
# 构建阶段

# 基于空镜像 [scratch](https://hub.docker.com/_/scratch/) 创建构建阶段镜像
FROM scratch AS build-stage

# 简单地将本机文件复制到容器文件，本机文件必须在构建上下文中
# COPY <host-src> <container-dst>

# 不同于简单复制，ADD 允许 <host-src> 为链接地址，且若 <host-src> 是本机压缩文件，ADD 会自动将其解压
# ADD <host-src> <container-dst>

# 运行命令
# RUN <command>

# [FROM](https://docs.docker.com/engine/reference/builder/#from)
# [COPY](https://docs.docker.com/engine/reference/builder/#copy)
# [ADD](https://docs.docker.com/engine/reference/builder/#add)
# [RUN](https://docs.docker.com/engine/reference/builder/#run)

# 复制 hello-world:latest 镜像的 /hello 文件到本阶段的 /build/hello-world 文件
COPY --from=hello-world /hello /build/hello-world

#-------------------------------------------------------------------------------
# 运行阶段

FROM scratch AS run-stage

# 复制构建阶段的 /build 目录到运行阶段的 /dist 目录
COPY --from=build-stage /build /dist

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
CMD [ "/dist/hello-world" ]
