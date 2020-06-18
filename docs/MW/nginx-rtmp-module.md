# 流媒体服务器 nginx-rtmp-module

跨平台的流媒体服务器，官网 <https://github.com/arut/nginx-rtmp-module>。

## 编译安装
---

参见 <https://howtoforge.com/tutorial/how-to-install-nginx-with-rtmp-module-on-centos/>。

配置编译环境（CentOS）

```sh
# 安装编译工具
[user@host *] sudo yum group install 'Development Tools'
# 安装 NGINX 依赖
[user@host *] sudo yum install openssl-devel pcre-devel zlib-devel
```

配置编译环境（Ubuntu）

```sh
# 安装编译工具
user@host:*$ sudo apt install build-essential
# 安装 NGINX 依赖
user@host:*$ sudo apt install libpcre3-dev libssl-dev zlib1g-dev
```

拉取源码

```fish
user@host *> cd /usr/local/src

# 拉取 NGINX 源码（https://nginx.org/en/download.html）
user@host /u/l/src> wget https://nginx.org/download/nginx-1.18.0.tar.gz
user@host /u/l/src> tar -xavf nginx-1.18.0.tar.gz

# 拉取 nginx-rtmp-module 源码
user@host /u/l/src> git clone https://github.com/arut/nginx-rtmp-module.git
```

配置、编译、安装

```fish
user@host *> cd /usr/local/src/nginx-1.18.0

# 配置
user@host /u/l/s/nginx-1.18.0> ./configure --prefix='/opt/nginx-rtmp' \
                                           --add-module='../nginx-rtmp-module'

# 编译
user@host /u/l/s/nginx-1.18.0> make -j

# 安装
user@host /u/l/s/nginx-1.18.0> make install
```

创建录像目录

```
user@host *> sudo mkdir --mode=777 /var/nginx-rtmp-vod
```

## 典型配置
---

```fish
# 启动服务
user@host *> /opt/nginx-rtmp/sbin/nginx

# 停止服务
user@host *> /opt/nginx-rtmp/sbin/nginx -s quit

# 编辑配置
user@host *> vim /opt/nginx-rtmp/conf/nginx.conf
```

```nginx.conf
user <user>;
worker_processes auto;
events {
    worker_connections 1024;
}
http {
    include      mime.types;
    default_type application/octet-stream;
    server {
        listen 80;
        location /stat {
            rtmp_stat            all;
            rtmp_stat_stylesheet stat.xsl;
        }
        location /stat.xsl {
            root /usr/local/src/nginx-rtmp-module;
        }
        location /control {
            rtmp_control all;
        }
        location ~ ^/live/(.+\.(mpd|m4a|m4v))$ {
            alias /tmp/nginx-rtmp-dash/$1;
            types {
                application/dash+xml mpd;
                audio/mp4            m4a;
                video/mp4            m4v;
            }
            add_header 'Cache-Control' 'no-cache';
        }
        location ~ ^/live/(.+\.(m3u8|ts))$ {
            alias /tmp/nginx-rtmp-hls/$1;
            types {
                application/vnd.apple.mpegurl m3u8;
                video/mp2t                    ts;
            }
            add_header 'Cache-Control' 'no-cache';
        }
    }
}
rtmp {
    server {
        listen 1935;
        application live {
            # RTMP
            live                 on;
            # HLS
            hls                  on;
            hls_fragment         5s;
            hls_playlist_length  30s;
            hls_path             /tmp/nginx-rtmp-hls;
            hls_nested           on;
            hls_cleanup          on;
            # DASH
            dash                 on;
            dash_fragment        5s;
            dash_playlist_length 30s;
            dash_path            /tmp/nginx-rtmp-dash;
            dash_nested          on;
            dash_cleanup         on;
            # RECORD
            record               off; #all;
            record_path          /var/nginx-rtmp-vod;
            record_suffix        _%F_%T.flv;
            record_unique        on;
            record_interval      10m;
        }
        application vod {
            play /var/nginx-rtmp-vod;
        }
    }
}
```

*   状态：`http://host[:80]/stat`
*   推流（RTMP）：`rtmp://host[:1935]/live/<name>`
*   拉流（RTMP）：`rtmp://host[:1935]/live/<name>`
*   拉流（DASH）：`http://host[:80]/live/<name>/index.mpd`
*   拉流（HLS）：`http://host[:80]/live/<name>/index.m3u8`
