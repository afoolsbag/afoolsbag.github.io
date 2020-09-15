# 包管理工具 pacman

适用于 Arch 操作系统的包管理工具 pacman。

官网 <https://www.archlinux.org/pacman/>。

## 配置源
---

### Arch

```fish
# 对于最简系统，没有预安装文本编辑器，而默认源的带宽不理想
# 推荐安装小巧的 nano 文本编辑器，使用 nano 编辑器编辑镜像源，以改善带宽
[sudoer@host *]$ sudo pacman -S nano

# 配置镜像源
[sudoer@host *]$ sudo vim /etc/pacman.d/mirrorlist

# 同步索引
[sudoer@host *]$ sudo pacman --sync --refresh
# abbr.          sudo pacman -Sy
```

## 常用命令组合
---

```fish
# 同步索引并更新包
sudoer@host *> sudo pacman --sync --refresh --sysupgrade
# abbr.        sudo pacman -Syu

# 搜索包
sudoer@host *> pacman --sync --search <regex>
# abbr.        pacman -Ss <regex>

# 查看包信息
sudoer@host *> pacman --sync --info <package>
# abbr.        pacman -Si <package>

# 安装包
sudoer@host *> sudo pacman --sync <package>
# abbr.        sudo pacman -S <package>

# 卸载包
sudoer@host *> sudo pacman --remove <package>
# abbr.        sudo pacman -R <package>

# 卸载残留依赖
sudoer@host *> sudo pacman --remove --recursive $(pacman --query --unrequired --deps --quiet)
# abbr.        sudo pacman -Rs $(pacman -Qtdq)
```

### 使用 pacman 安装开发工具的示例
---

```fish
# 安装并启用 Open SSH Server
sudoer@host *> sudo pacman -S openssh
sudoer@host *> sudo systemctl enable sshd
sudoer@host *> sudo systemctl start sshd

# 安装开发工具
sudoer@host *> sudo pacman -S base-devel man vim

# 安装 pip 并配置源
sudoer@host *> sudo pacman -S python-pip
sudoer@host *> pip config set global.index-url https://pypi.doubanio.com/simple
# 确保 PATH 环境变量包含 $HOME/.local/bin

# 安装 CMake
sudoer@host *> pip install cmake

# 安装 Conan
sudoer@host *> pip install conan
```
