# 多媒体处理套件 FFmpeg

官网 <https://ffmpeg.org/>，
[*FFmpeg 官方文档*](https://ffmpeg.org/ffmpeg-all.html)。

## 安装
---

### 在 GNU/Linux 操作系统上从源码编译安装

```fish
# 拉取源码
user@host *> cd /usr/local/src
user@host /u/l/src> sudo wget https://ffmpeg.org/releases/ffmpeg-4.2.3.tar.bz2
user@host /u/l/src> sudo tar -xavf ffmpeg-4.2.3.tar.bz2
user@host /u/l/src> cd ffmpeg-4.2.3

# 配置项目
user@host /u/l/s/ffmpeg-4.2.3> ./configure --enable-shared

# 编译项目
user@host /u/l/s/ffmpeg-4.2.3> make -j

# 安装产物
user@host /u/l/s/ffmpeg-4.2.3> sudo make install

# 注册安装的共享库
user@host *> sudo ldconfig
```

### 在 Windows 操作系统上通过 Scoop 安装

```ps1
PS $env:USERPROFILE> scoop install ffmpeg
```

## 常用命令组合
---

### 改变封装格式

```cmd
%USERPROFILE%> ffmpeg -i <input> ^
                      -codec copy <output>
:: abbr.       ffmpeg -i <input> -c copy <output>
```

### 生成缩略图

```cmd
%USERPROFILE%> ffmpeg -i <video> ^
                      -f mjpeg -ss 1 -frames:v 1 <image>
:: abbr.       ffmpeg -i <video> -f mjpeg -ss 1 -frames:v 1 <image>
```

### 读取文件流转换为 RTMP 流

```cmd
%USERPROFILE%> ffmpeg -re -i </path/to/video.flv> ^
                      -f flv -codec copy <rtmp://host/path/to/stream>
:: abbr.       ffmpeg -re -i </path/to/video.flv> -f flv -c copy <rtmp://host/path/to/stream>
```

### 读取 RTSP 流转换为 RTMP 流

```cmd
%USERPROFILE%> ffmpeg -i <rtsp://host/path/to/stream> ^
                      -f flv -codec copy <rtmp://host/path/to/stream>
:: abbr.       ffmpeg -i <rtsp://host/path/to/stream> -f flv -c copy <rtmp://host/path/to/stream>
```

## 常见选项释义
---

```cmd
%USERPROFILE%> ffmpeg [global_option]... ^
                      { [input_file_option]... -i <input_url> } ... ^
                      { [output_file_option]... <output_url> } ...
```

### `global_options`

参见 <https://ffmpeg.org/ffmpeg-all.html#Generic-options>。

```sh
-loglevel          # 设定日志级别：
-v        quiet    # 沉默
          panic    # 崩溃错误
          fatal    # 致命错误
          error    # 错误（可能可恢复）
          warning  # 警告
          info     # 信息
          verbose  # 更啰嗦的信息
          debug    # 调试，输出所有信息
          trace    # 跟踪
```

### `input/output_file_options`

参见 <https://ffmpeg.org/ffmpeg-all.html#Main-options>。

```sh
-f <fmt>                                 # 指定文件格式

-y                                       # 覆盖输出而不询问

-codec[:stream_specifier] <codec>        # 指定编解码器
-c[:stream_specifier] <codec>

-codec:v <codec>                         # 指定视频流编解码器
-c:v <codec>
-vcodec <codec>

-codec:a <codec>                         # 指定音频流编解码器
-c:a <codec>
-acodec <codec>

-codec:s <codec>                         # 指定字幕流编解码器
-c:s <codec>
-scodec <codec>

-ss <position>                           # 指定位置

-frames[:stream_specifier] <framecount>  # 设定输出帧数（仅限输出选项）

-vn                                      # video    忽略视频流
-an                                      # audio    忽略音频流
-sn                                      # subtitle 忽略字幕流
-dn                                      # data     忽略数据流
```
