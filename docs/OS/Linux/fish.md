# 命令行壳层 fish

跨平台的命令行壳层 fish（friendly interactive shell），官网 <https://fishshell.com/>。

## 安装 fish
---

### Arch

```bash
[user@host *]$ sudo pacman --sync fish
```

### CentOS

```bash
# 安装 fish 2
[user@host *]$ sudo yum install fish

# 安装 fish 3
[user@host *]$ sudo wget --directory-prefix=/etc/yum.repos.d https://download.opensuse.org/repositories/shells:fish:release:3/RedHat_RHEL-6/shells:fish:release:3.repo
# CentOS 7     sudo wget --directory-prefix=/etc/yum.repos.d https://download.opensuse.org/repositories/shells:fish:release:3/RHEL_7/shells:fish:release:3.repo
# CentOS 8     sudo wget --directory-prefix=/etc/yum.repos.d https://download.opensuse.org/repositories/shells:fish:release:3/CentOS_8/shells:fish:release:3.repo
[user@host *]$ sudo yum install fish
```

### Kali

```bash
# 安装 fish 3
user@host:*$ sudo apt install fish
```

### Ubuntu

```
# 安装 fish 2
user@host:*$ sudo apt install fish

# 安装 fish 3
user@host:*$ sudo apt-add-repository ppa:fish-shell/release-3
user@host:*$ sudo apt update
user@host:*$ sudo apt install fish
```

## 常用命令组合
---

```fish
# 查看当前壳层
user@host *> echo $SHELL

# 查看可用壳层
user@host *> chsh --list-shells
# abbr.      chsh -l

# 切换默认壳层（重新登陆以生效）
user@host *> chsh --shell /usr/bin/fish [username]
# abbr.      chsh -s /usr/bin/fish [username]

# 查看已配置的命令别名
user@host *> alias

# 设置一个命令别名
user@host *> alias ll='ls --all -l --classify --color=auto'

# 取消一个命令别名
user@host *> unalias ll
```

## 壳层环境
---

### bash

*   系统环境变量（键值对列表）
    *   `/etc/environment`
*   系统配置（脚本）
    *   `/etc/profile`
    *   `/etc/profile.d/*.sh`
    *   `/etc/profile.d/sh.local`（CentOS）
*   系统壳层配置（脚本）
    *   `/etc/bash.bashrc`（Ubuntu）
    *   `/etc/bashrc`（CentOS）
*   用户环境变量（键值对）
    *   `~/.pam_environment`（Ubuntu）
*   用户配置（脚本）
    *   `~/.profile`
*   用户壳层配置（脚本）
    *   `~/.bash_profile`
    *   `~/.bashrc`

```bash
export PATH="${PATH}:/path/to/directory"
```

### fish

*   系统配置（脚本）
    *   `/etc/fish/config.fish`
    *   `/etc/fish/conf.d/*.fish`
*   用户配置（脚本）
    *   `~/.config/fish/config.fish`
    *   `~/.config/fish/conf.d/*.fish`

```fish
set --export PATH {$PATH} /path/to/directory
```
