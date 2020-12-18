# Git

[Git] 是一款分布式版本控制系统。[^Git on Wikipedia]

参见：

*   [Git教程 - 廖雪峰的官方网站](https://liaoxuefeng.com/wiki/896043488029600)
*   [Sourcetree | Free Git GUI for Mac and Windows](https://sourcetreeapp.com/)
*   [TortoiseGit – Windows Shell Interface to Git](https://tortoisegit.org/)

## 运行 Git

### :material-microsoft-windows: Windows 10 和 Scoop

``` doscon
%USERPROFILE%> scoop install git
```

## `git` 命令

### 配置

#### 列出所有配置

``` doscon
%USERPROFILE%> git config --list
abbr.        > git config -l
```

#### 列出系统配置

``` doscon
%USERPROFILE%> git config --system --list
abbr.        > git config --system -l
```

:material-linux: `/etc/gitconfig`  
:material-microsoft-windows: `%ALLUSERSPROFILE%\Git\config`

#### 列出用户配置

``` doscon
%USERPROFILE%> git config --global --list
abbr.        > git config --global -l
```

:material-linux: `~/.gitconfig`  
:material-microsoft-windows: `%USERPROFILE%\.gitconfig`

#### 为当前用户设置名称和邮箱

``` doscon
%USERPROFILE%> git config --global user.name "<name>"

%USERPROFILE%> git config --global user.email "<email@example.com>"
```

#### 列出项目配置

``` doscon
%USERPROFILE%> git config --local --list
abbr.        > git config --local -l
```

:material-linux: `.git/config`  
:material-microsoft-windows: `.git\config`

#### 生成 SSH 密钥对

``` doscon
%USERPROFILE%> ssh-keygen -t rsa -C "<email@example.com>"
```

### 版本库

#### 列出远端库

``` doscon
%USERPROFILE%\wdir> git remote --verbose
abbr.             > git remote -v
```

#### 在本地创建版本库

1.  初始化版本库

    ``` doscon
    %USERPROFILE%\wdir> git init
    ```

0.  添加远端库

    ``` doscon
    %USERPROFILE%\wdir> git remote add <origin> <git@host:wdir.git>
    ```

0.  绑定当前分支到远端 origin 库

    ``` doscon
    %USERPROFILE%\wdir> git branch --set-upstream-to=<origin>
    abbr.             > git branch -u <origin>
    ```

0.  推送本地提交到远端库

    ``` doscon
    %USERPROFILE%\wdir> git push <origin> <master>
    ```

#### 从远端复制版本库

1.  从远端复制版本库

    ``` doscon
    %USERPROFILE%> git clone <git@host:wdir.git>
    ```

0.  创建远端分支到本地

    ``` doscon
    %USERPROFILE%\wdir> git branch --set-upstream-to=<origin/dev> <dev>
    abbr.             > git branch -u <origin/dev> <dev>
    ```

### 分支

#### 展示分支

``` doscon
%USERPROFILE%\wdir> git branch
```

#### 展示远端分支

``` doscon
%USERPROFILE%\wdir> git branch --remote
abbr.             > git branch -r
```

#### 创建分支

``` doscon
%USERPROFILE%\wdir> git branch <dev>
```

#### 删除分支

``` doscon
%USERPROFILE%\wdir> git --delete <dev>
abbr.             > git -d <dev>
```

#### 切换分支

``` doscon
%USERPROFILE%\wdir> git switch <dev>
depr.             > git checkout <dev>
```

#### 创建并切换分支

``` doscon
%USERPROFILE%\wdir> git switch --create <dev>
abbr.             > git switch -c <dev>
depr.             > git checkout -b <dev>
```

### 提交

#### 查看提交历史

``` doscon
%USERPROFILE%\wdir> git log [--abbrev-commit --graph --pretty=oneline]
abbr.             > git log [--graph --online]
```

#### 合并分支

1.  切换到主分支

    ``` doscon
    %USERPROFILE%\wdir (dev)> git checkout <master>
    ```

0.  合并分支

    ``` doscon
    %USERPROFILE%\wdir (master)> git merge <dev>
    ```

0.  禁用快进模式，带记录地合并分支

    ``` doscon
    %USERPROFILE%\wdir (master)> git merge --no-ff -m "<merge with no-ff>" <dev>
    ```

0.  若希望整理提交历史，将分岔合并

    ``` doscon
    %USERPROFILE%\wdir (master)> git rebase
    ```

#### 解决冲突

1.  出现冲突

    ……

0.  查看冲突

    ``` doscon
    %USERPROFILE%\wdir> git status
    ```

0.  解决冲突

    ……

0.  添加修改

    ``` doscon
    %USERPROFILE%\wdir> git add <file>
    ```

0.  提交修改

    ``` doscon
    %USERPROFILE%\wdir> git commit -m "<conflict fixed>"
    ```

### 标签

#### 列出标签

``` doscon
%USERPROFILE%\wdir> git tag 
```

#### 查看标签

``` doscon
%USERPROFILE%\wdir> git show <tagname>
```

#### 打标签

``` doscon
%USERPROFILE%\wdir> git tag <tagname> [commit]
```

#### 制作一个带注释的标签

``` doscon
%USERPROFILE%\wdir> git tag --annotate --message="<message>" <tagname> [commit]
abbr.             > git tag -a -m "<message>" <tagname> [commit]
```

### 暂存区

#### 与版本库比较

``` doscon
%USERPROFILE%\wdir> git diff --cached
```

#### 提交修改到版本库

``` doscon
%USERPROFILE%\wdir> git commit --message="<message>"
abbr.             > git commit -m "<message>"
```

#### 回退修改到工作区

``` doscon
%USERPROFILE%\wdir> git restore --staged <file>...
depr.             > git reset HEAD [file]...
```

### 工作区

#### 查看工作区状态

``` doscon
%USERPROFILE%\wdir> git status
```

#### 与版本库比较

``` doscon
%USERPROFILE%\wdir> git diff HEAD
```

#### 与暂存区比较

``` doscon
%USERPROFILE%\wdir> git diff
```

#### 添加修改到暂存区

``` doscon
%USERPROFILE%\wdir> git add <file>...
```

#### 放弃修改

``` doscon
%USERPROFILE%\wdir> git restore <file>...
depr.             > git checkout -- <file>...
```

### 藏匿

#### 典型用法

1.  藏匿脏工作区，以处理突发事件，譬如漏洞修复

    ``` doscon
    %USERPROFILE%\wdir> git stash
    ```

0.  处理突发事件

    ……

0.  恢复脏工作区，继续之前的工作

    ``` doscon
    %USERPROFILE%\wdir> git stash pop
    ```

#### 列出脏工作区

``` doscon
%USERPROFILE%\wdir> git stash list
```

#### 恢复脏工作区

``` doscon
%USERPROFILE%\wdir> git stash apply [stash@{0}]
```

#### 丢弃赃工作区

``` doscon
%USERPROFILE%\wdir> git stash drop [stash@{0}]
```

#### 其它

复制特定提交到当前分支，常用于将主分支的漏洞修复，应用到开发分支：

``` doscon
%USERPROFILE\wdir> git cherry-pick <commit>
```

## 服务

1.  安装 git

    ……

0.  创建 git 用户

    ``` console
    [user@host ~]$ sudo useradd --comment 'user for git service' --create-home --shell /usr/bin/git-shell git
    [abbr.      ]$ sudo useradd -c 'user for git service' -m -s /usr/bin/git-shell git
    ```

0.  导入证书，一行一条

    ``` console
    [user@host ~]$ cd /home/git

    [user@host git]$ sudo --user=git mkdir .ssh
    [abbr.        ]$ sudo -u git mkdir .ssh

    [user@host git]$ sudo --user=git vim .ssh/authorized_keys  
    [abbr.        ]$ sudo -u git vim .ssh/authorized_keys
    ```

0.  初始化仓库

    ``` console
    [user@host git]$ sudo --user=git git init --bare <wdir.git>
    [abbr.        ]$ sudo -u git git init --bare <wdir.git>
    ```

<!----------------------------------------------------------------------------->

[^Git on Wikipedia]: [Git - Wikipedia](https://wikipedia.org/wiki/Git)

[Git]: https://git-scm.com/
