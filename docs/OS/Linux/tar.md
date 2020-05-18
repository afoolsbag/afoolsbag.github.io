# 归档打包工具 tar

适用于 GNU/Linux 操作系统的归档打包工具 `tar`（tape archive），官网 <https://gnu.org/software/tar/>。

___
## 常用命令组合

```shell
tar -cavf <archive.tar.*> <source>         # 压缩
tar -xavf <archive.tar.*> -C <target-dir>  # 解压
```

___
## 常见选项释义

```shell
# 操作
tar -c (--create)   # 创建
tar -x (--extract)  # 提取

# 存储形式
tar -f (--file=ARCHIVE)  # 存储为文件

# 压缩算法
tar -a (--auto-compress)             # 通过后缀名识别压缩算法
tar -j (--bzip2)                     # .tbz, .tb2, .tar.bz2
tar -J (--xz)                        # .txz, .tar.xz
tar --lzip                           #
tar --lzma                           # .tlz, .tar.lzma
tar --lzop                           #
tar -z (--gzip, --gunzip, --ungzip)  # .tgz, .tar.gz
tar -Z (--compress, --uncompress)    # .taz, .tar.Z

# 信息输出
tar -v (--verbose)
```
