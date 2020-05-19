# 用户管理工具 users 等

___
## 常用命令组合

```fish
user@host *> users          # 输出已登陆用户的用户名
user@host *> who --heading  # 输出已登录用户的用户信息
# abbr.      who -H
user@host *> w              # 输出已登录用户的用户信息，和他们正在做什么
```

### 新建用户

```fish
# 新建用户[，并创建用户主目录]
user@host *> useradd [--create-home] <username>
# abbr.      useradd [-m] <username>

# 交互式修改用户密码
user@host *> passwd <username>

# 可选的，为用户赋予 `sudo` 权限
user@host *> echo "<username> ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/<username>
```

### 删除用户

```fish
# 删除用户[，并移除用户主目录]
user@host *> userdel [--remove] <username>
# abbr.      userdel [-r] <username>
```
