# 分布式版本控制系统 Git

官网 <https://git-scm.com/>，
[*官方文档*](https://git-scm.com/doc)。

Git 图形用户界面 [*Sourcetree*](https://sourcetreeapp.com/) 和 [*TortoiseGit*](https://tortoisegit.org/)。

[*廖雪峰的 Git 教程*](https://liaoxuefeng.com/wiki/896043488029600)。

## 配置
---

```fish
# 列出配置
user@host *> git config --list
# abbr.      git config -l

# 系统配置（`/etc/gitconfig`）
user@host *> git config --system --list
# abbr.      git config --system -l

# 用户配置（`~/.gitconfig`）
user@host *> git config --global --list
# abbr.      git config --global -l

# 项目配置（`.git/config`）
user@host *> git config --local --list
# abbr.      git config --local -l
```

### 为当前用户设置名称和邮箱

```fish
user@host *> git config --global user.name "<name>"
user@host *> git config --global user.email "<email@example.com>"
```

### 生成 SSH 密钥对

```fish
user@host ~> ssh-keygen -t rsa -C "<email@example.com>"
```

## 版本库
---

```fish
# 列出远端库
user@host ~/wdir> git remote --verbose
# abbr.           git remote -v
```

### 在本地创建版本库

```fish
# 初始化版本库
user@host */wdir> git init

# 添加远端库
user@host */wdir> git remote add <origin> <git@host:wdir.git>

# 绑定当前分支到远端 <origin> 库
user@host */wdir> git branch --set-upstream-to=<origin>
# abbr.           git branch -u <origin>

# 推送本地提交到远端库
user@host */wdir> git push <origin> <master>
```

### 从远端复制版本库

```fish
# 从远端复制版本库
user@host *> git clone <git@host:wdir.git>

# 创建远端分支到本地
user@host */wdir> git branch --set-upstream-to=<origin/dev> <dev>
# abbr.           git branch -u <origin/dev> <dev>
```

## 分支
---

```fish
# 展示分支
user@host */wdir> git branch

# 展示远端分支
user@host */wdir> git branch --remote
# abbr.           git branch -r

# 创建分支
user@host */wdir> git branch <dev>

# 删除分支
user@host */wdir> git --delete <dev>
# abbr.           git -d <dev>

# 切换分支
user@host */wdir> git switch <dev>
# depr.           git checkout <dev>

# 创建并切换分支
user@host */wdir> git switch --create <dev>
# abbr.           git switch -c <dev>
# depr.           git checkout -b <dev>
```

### 提交

```fish
# 查看提交历史
user@host */wdir> git log [--abbrev-commit --graph --pretty=oneline]
# abbr.           git log [--graph --online]
```

### 合并分支

```fish
# 切换到主分支
user@host */wdir (dev)> git checkout <master>

# 合并分支
user@host */wdir (master)> git merge <dev>

# 禁用快进模式，带记录地合并分支
user@host */wdir (master)> git merge --no-ff -m "<merge with no-ff>" <dev>

# 若希望整理提交历史，将分岔合并
user@host */wdir (master)> git rebase
```

### 解决冲突

```fish
# 出现冲突

# 查看冲突
user@host */wdir> git status

# 解决冲突
# ......

# 添加修改
user@host */wdir> git add <file>

# 提交修改
user@host */wdir> git commit -m "<conflict fixed>"
```

### 标签

```fish
# 列出标签
user@host */wdir> git tag 

# 查看标签
user@host */wdir> git show <tagname>

# 打标签
user@host */wdir> git tag <tagname> [commit]

# 制作一个带注释的标签
user@host */wdir> git tag --annotate --message='<message>' <tagname> [commit]
# abbr.           git tag -a -m '<message>' <tagname> [commit]
```

## 暂存区
---

```fish
# 比较暂存区与版本库
user@host */wdir> git diff --cached

# 从暂存区，将修改提交到版本库（`index` >> `branch`）
user@host */wdir> git commit --message="<message>"
# abbr.           git commit -m "<message>"

# 从暂存区，将修改回退到工作区
user@host */wdir> git restore --staged <file>...
# depr.           git reset HEAD [file]...
```

## 工作区
---

### 常用工作区操作

```fish
# 查看工作区状态
user@host */wdir> git status

# 比较工作区与版本库
user@host */wdir> git diff HEAD

# 比较工作区与暂存区
user@host */wdir> git diff

# 从工作区，将修改添加到暂存区（`wdir` >> `index`）
user@host */wdir> git add <file>...

# 放弃工作区修改
user@host */wdir> git restore <file>...
# depr.           git checkout -- <file>...
```

### 藏匿

```fish
# 藏匿脏工作区，以处理突发事件，譬如漏洞修复
user@host */wdir> git stash

# ......

# 恢复脏工作区，继续之前的工作
user@host */wdir> git stash pop
```

### 其它藏匿操作

```fish
# 复制特定提交到当前分支
# 常用于将主分支的漏洞修复，应用到开发分支
user@host */wdir> git cherry-pick <commit>

# 列出存储的脏工作区
user@host */wdir> git stash list

# 恢复指定的脏工作区，且不将其丢弃
user@host */wdir> git stash apply [stash@{0}]

# 丢弃指定的脏工作区
user@host */wdir> git stash drop [stash@{0}]
```

## 服务
---

```sh
# 安装 git
# ......

# 创建 git 用户
user@host *> sudo useradd --comment 'user for git service' --create-home --shell /usr/bin/git-shell git
# abbr.      sudo useradd -c 'user for git service' -m -s /usr/bin/git-shell git

# 导入证书，一行一条
user@host ~> cd /home/git
user@host /h/git> sudo --user=git mkdir .ssh
# abbr.           sudo -u git mkdir .ssh
user@host /h/git> sudo --user=git vim .ssh/authorized_keys  
# abbr.           sudo -u git vim .ssh/authorized_keys

# 初始化仓库
user@host /h/git> sudo --user=git git init --bare <wdir.git>
# abbr.           sudo -u git git init --bare <wdir.git>
```
