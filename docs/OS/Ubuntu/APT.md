# 包管理工具 apt

适用于 Debian、Kali 和 Ubuntu 操作系统的包管理工具 apt（advanced packaging tool），使用 dpkg（debian package）格式安装包。

官网 <https://wiki.debian.org/Apt>。

## 配置源
---

### Kali

```bash
# 备份原始源
user@host:*$ sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

# 配置中科大镜像源（https://mirrors.ustc.edu.cn/kali/）
user@host:*$ sudo vim /etc/apt/sources.list
# deb https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
# deb-src https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib

# 同步索引
user@host:*$ sudo apt update
```

### Ubuntu

```bash
# 备份原始源
user@host:*$ sudo cp /etc/apt/sources.list /etc/apt/sources.list.bck

# 配置阿里云镜像源 (https://developer.aliyun.com/mirror/ubuntu)
user@host:*$ sudo vim /etc/apt/sources.list
# :%s/archive\.ubuntu\.com/mirrors.aliyun.com/g

# 同步索引
user@host:*$ sudo apt update
```

## 常用命令组合
---

```fish
# 更新包
user@host *> sudo apt upgrade

# 搜索
user@host *> apt search <name>

# 展示包
user@host *> apt show <package>

# 安装包
user@host *> sudo apt install <package>

# 卸载包
user@host *> sudo apt remove <package>

# 卸载残留依赖
user@host *> sudo apt autoremove
```

## 使用 apt 安装开发工具链的示例
---

```fish
# 安装 Open SSH Server 并启用
user@host *> sudo apt install openssh-server
user@host *> sudo systemctl enable sshd
user@host *> sudo systemctl start sshd

# 安装 Vim
user@host *> sudo apt install vim

# 安装开发工具
user@host *> sudo apt install build-essential

# 若有需要，安装指定版本 GCC，并切换到指定环境
user@host *> sudo add-apt-repository ppa:ubuntu-toolchain-r/test
user@host *> sudo apt update
user@host *> sudo apt install gcc-9 g++-9
user@host *> export CC=/usr/bin/gcc-9
user@host *> export CXX=/usr/bin/g++-9

# 安装 GDB
user@host *> sudo apt install gdb

# 安装 pip3 并配置源
user@host *> sudo apt install python3-pip
user@host *> pip3 config set global.index-url https://pypi.doubanio.com/simple
# 确保 PATH 环境变量包含 $HOME/.local/bin

# 安装 CMake
user@host *> pip3 install cmake
# 或从官网安装包安装
user@host *> sudo wget --directory-prefix=/usr/local/src https://cmake.org/files/v3.17/cmake-3.17.3-Linux-x86_64.sh
user@host *> sudo chmod u+x /usr/local/src/cmake-3.17.3-Linux-x86_64.sh
user@host *> sudo /usr/local/src/cmake-3.17.3-Linux-x86_64.sh --prefix=/usr/local --exclude-subdir --skip-license

# 安装 Conan
user@host *> pip3 install conan
# 或从官网安装包安装
user@host *> sudo wget --directory-prefix=/usr/local/src https://dl.bintray.com/conan/installers/conan-ubuntu-64_1_26_0.deb
user@host *> sudo dpkg --install /usr/local/src/conan-ubuntu-64_1_26_0.deb
```

## 离线安装、更新工具 Keryx
---

官网 <https://launchpad.net/keryx>。
