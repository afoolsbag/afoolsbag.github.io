# 包管理工具 dnf

适用于 CentOS、Fedora 和 RHEL 操作系统的包管理工具 dnf（dandified, yellow dog updater, modified），使用 rpm（redhat package manager）格式安装包。

官网 <https://github.com/rpm-software-management/dnf>。

已过时的 yum 的官网 <http://yum.baseurl.org/>。

## 配置源
---

### CentOS

```bash
# 移除并备份原始源
[user@host *]$ sudo mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bck

# 下载并应用阿里云镜像源（https://developer.aliyun.com/mirror/centos）
[user@host *]$ sudo curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo
# CentOS 7     sudo curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
# CentOS 8     sudo curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo

# 启用额外源：Software Collections（https://wiki.centos.org/AdditionalResources/Repositories/SCL）
[user@host *]$ sudo dnf install centos-release-scl

# 启用额外源：Extra Packages for Enterprise（https://fedoraproject.org/wiki/EPEL）
[user@host *]$ sudo dnf install epel-release

# 同步索引
[user@host *]$ dnf clean all
[user@host *]$ dnf makecache
```

## 常用命令组合
---

```fish
# 检查可用升级
user@host *> dnf check-update

# 升级
user@host *> sudo dnf upgrade

# 搜索
user@host *> dnf search <query>

# 显示包信息
user@host *> dnf info <package>

# 安装包
user@host *> sudo dnf install <package>

# 卸载包
user@host *> sudo dnf remove <package>
```

## 使用 dnf 安装开发工具集的示例
---

```fish
# 安装 Open SSH Server 并启用
user@host *> sudo dnf install openssh-server
user@host *> sudo systemctl enable sshd
user@host *> sudo systemctl start sshd

# 安装 Vim
user@host *> sudo dnf install vim

# 安装开发工具
user@host *> sudo dfn group install 'Development Tools'

# 若有需要，安装指定版本开发工具，并切换到指定开发环境
user@host *> sudo dnf install devtoolset-6 devtoolset-7 devtoolset-8 devtoolset-9
user@host *> scl enable devtoolset-9 bash

# 若有需要，编译安装最新版 Git（https://git-scm.com/download/linux）
user@host *> sudo dnf install asciidoc xmlto docbook2x
user@host *> sudo dnf remove git
user@host *> cd /usr/local/src
user@host /u/l/src> sudo wget https://www.kernel.org/pub/software/scm/git/git-2.27.0.tar.gz
user@host /u/l/src> sudo tar -xavf git-2.27.0.tar.gz
user@host /u/l/src> cd git-2.27.0
user@host /u/l/s/git-2.27.0> sudo make configure
user@host /u/l/s/git-2.27.0> sudo ./configure
user@host /u/l/s/git-2.27.0> sudo make all doc info
user@host /u/l/s/git-2.27.0> sudo make install install-doc install-html install-info

# 安装 pip3 并配置源
user@host *> sudo dnf install python3
user@host *> pip3 config set global.index-url https://pypi.doubanio.com/simple
# 确保 PATH 环境变量包含 $HOME/.local/bin

# 安装 CMake
user@host *> pip3 install cmake

# 安装 Conan
user@host *> pip3 install conan
```
