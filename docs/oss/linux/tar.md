# 归档打包工具 tar

适用于 GNU/Linux 操作系统的归档打包工具 `tar`（tape archive），官网 <https://gnu.org/software/tar/>。

## 常用命令组合
---

```fish
# 压缩
user@host ~> tar --create --auto-compress --verbose --file=<archive.tar.*> <source>...
# abbr.      tar -cavf <archive.tar.*> <source>...

# 解压
user@host ~> tar --extract --auto-compress --verbose --file=<archive.tar.*> [--directory=<dir>]
# abbr.      tar -xavf <archive.tar.*> [-C <dir>]
```

## 常见选项释义
---

### 主要操作模式（Main operation mode）

```sh
-A, --catenate, --concatenate  # 连接归档
-c, --create                   # 创建
-d, --diff, --compare          # 比较
    --delete                   # 删除
-r, --append                   # 追加文件
-t, --list                     # 列出内容
    --test-label
-u, --update                   # 更新文件
-x, --extract                  # 提取
```

### 设备选择和切换（Device selection and switching）

```sh
-f, --file=<archive>  # 存储为文件
```

### 压缩选项（Compression options）

```sh
-a, --auto-compress             # 通过后缀名识别压缩算法
-j, --bzip2                     # .tbz, .tb2, .tar.bz2
-J, --xz                        # .txz, .tar.xz
    --lzip                      #
    --lzma                      # .tlz, .tar.lzma
    --lzop                      #
-z, --gzip, --gunzip, --ungzip  # .tgz, .tar.gz
-Z, --compress, --uncompress    # .taz, .tar.Z
```

### 本地文件选择（Local file selection）

```sh
-C, --directory=<dir>  # 改到 <dir> 文件夹
```

### 信息输出（Informative output:）

```sh
-v --verbose  # 详细列出已处理的文件
```
