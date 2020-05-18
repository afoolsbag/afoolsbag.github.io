# 多媒体处理套件 [*FFmpeg*](https://ffmpeg.org/)

## 常用命令

### 改变封装格式

```cmder
λ ffmpeg -i <input-video-path> ^
         -c copy <output-video-path>
```

### 生成缩略图

```cmder
λ ffmpeg -i <video-path> ^
         -f mjpeg -ss 1 -frames:v 1 <image-path>
```

### 转文件流到 RTMP 流

```cmder
λ ffmpeg -re -i </path/to/video.flv> ^
         -f flv -c copy rtmp://host/live/<stream>
```

### 转 RTSP 流到 RTMP 流

```cmder
λ ffmpeg -i rtsp://host/<path/to/stream> ^
         -f flv -c copy rtmp://host/live/<stream>
```

## 命令说明

```cmder
λ ffmpeg [global_options] ^
         {[input_file_options] -i input_url} ... ^
         {[output_file_options] output_url} ...
```

### `global_options`

```cmder
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

```cmder
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