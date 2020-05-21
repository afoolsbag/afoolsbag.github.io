# 可执行与可链接格式 ELF

适用于 GNU/Linux 操作系统的应用程序二进制接口规范 ELF（Executable and Linkable Format）。

___
## 常用命令组合

```fish
```

___
## 常见选项释义

### `objdump`

官网 <https://www.gnu.org/software/binutils/>，
官方文档 <https://sourceware.org/binutils/docs/binutils/objdump.html>。

### `readelf`

官网 <https://www.gnu.org/software/binutils/>，
官方文档 <https://sourceware.org/binutils/docs/binutils/readelf.html>。

```fish
user@host *> readelf <option(s)> <elf-file(s)>
```

```bash
-a, --all                          # 全部，等同于 -h -l -S -s -r -d -V -A -I
-h, --file-header                  # 文件头
-l, --program-headers, --segments  # 程序头
-S, --section-headers, --sections  # 段表
-s, --syms, --symbols              # 符号段（.symtab）
-r, --relocs                       # 重定位段（如果存在）
-d, --dynamic                      # 动态段（如果存在）
-V, --version-info                 # 版本段（如果存在）
-I, --histogram                    # 直方图

    --dyn-syms                     # 动态符号表
```

### `ldd`

官方文档 <http://man7.org/linux/man-pages/man1/ldd.1.html>。

```fish
user@host *> ldd [option(s)] <file(s)>
```
