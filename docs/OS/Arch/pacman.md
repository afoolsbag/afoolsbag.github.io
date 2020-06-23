# 包管理工具 pacman

适用于 Arch 操作系统的包管理工具 pacman。

官网 <https://www.archlinux.org/pacman/>。

## 配置源
---

### Arch

```fish
# 配置镜像源
[user@host *]$ sudo vim /etc/pacman.d/mirrorlist

# 同步索引
[user@host *]$ sudo pacman --sync --refresh
# abbr.        sudo pacman -Sy
```

## 常用命令组合
---

```fish
# 同步索引并更新包
user@host *> sudo pacman --sync --refresh --sysupgrade
# abbr.      sudo pacman -Syu

# 搜索包
user@host *> pacman --sync --search <regex>
# abbr.      pacman -Ss <regex>

# 查看包信息
user@host *> pacman --sync --info <package>
# abbr.      pacman -Si <package>

# 安装包
user@host *> sudo pacman --sync <package>
# abbr.      sudo pacman -S <package>

# 卸载包
user@host *> sudo pacman --remove <package>
# abbr.      sudo pacman -R <package>

# 卸载残留依赖
user@host *> sudo pacman --remove --recursive $(pacman --query --unrequired --deps --quiet)
# abbr.      sudo pacman -Rs $(pacman -Qtdq)
```

### 使用 pacman 安装开发工具的示例
---

```fish
# 安装并启用 Open SSH Server
user@host *> sudo pacman -S openssh
user@host *> sudo systemctl enable sshd
user@host *> sudo systemctl start sshd

# 安装开发工具
user@host *> sudo pacman -S base-devel man vim

# 安装 pip 并配置源
user@host *> sudo pacman -S python-pip
user@host *> pip config set global.index-url https://pypi.doubanio.com/simple
# 确保 PATH 环境变量包含 $HOME/.local/bin

# 安装 CMake
user@host *> pip install cmake

# 安装 Conan
user@host *> pip install conan
```
