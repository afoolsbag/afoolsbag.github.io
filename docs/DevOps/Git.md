# Git

[:material-git: Git][Git] 是一款分布式版本控制系统。[^Git on Wikipedia]

参见：

*   [Git Cheat Sheet | Tower Blog](https://www.git-tower.com/blog/git-cheat-sheet/)
*   [Developing AngularJS § Git Commit Guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guidelines)
*   [A collection of .gitignore templates](https://github.com/github/gitignore)
*   [Git教程 - 廖雪峰的官方网站](https://liaoxuefeng.com/wiki/896043488029600)
*   [Sourcetree | Free Git GUI for Mac and Windows](https://sourcetreeapp.com/)
*   [TortoiseGit – Windows Shell Interface to Git](https://tortoisegit.org/)

## 运行 :material-git: Git

### :material-microsoft-windows: Windows 10 和 Scoop

``` doscon
%USERPROFILE%> scoop install git
```

## `git` 命令

### 配置

???+ tldr "列出所有配置"

    ``` doscon
    %USERPROFILE%> git config --list
    abbr.        > git config -l
    ```

??? tldr "列出系统配置"

    ``` doscon
    %USERPROFILE%> git config --system --list
    abbr.        > git config --system -l
    ```

    :material-linux: `/etc/gitconfig`  
    :material-microsoft-windows: `%ALLUSERSPROFILE%\Git\config`

??? tldr "列出用户配置"

    ``` doscon
    %USERPROFILE%> git config --global --list
    abbr.        > git config --global -l
    ```

    :material-linux: `~/.gitconfig`  
    :material-microsoft-windows: `%USERPROFILE%\.gitconfig`

??? tldr "为当前用户设置名称和邮箱"

    ``` doscon
    %USERPROFILE%> git config --global user.name "<name>"

    %USERPROFILE%> git config --global user.email "<email@example.com>"
    ```

??? tldr "列出项目配置"

    ``` doscon
    %USERPROFILE%> git config --local --list
    abbr.        > git config --local -l
    ```

    :material-linux: `.git/config`  
    :material-microsoft-windows: `.git\config`

??? tldr "生成 SSH 密钥对"

    ``` doscon
    %USERPROFILE%> ssh-keygen -t rsa -C "<email@example.com>"
    ```

### 版本库

???+ tldr "列出远端库"

    ``` doscon
    %USERPROFILE%\wdir> git remote --verbose
    abbr.             > git remote -v
    ```

??? tldr "在本地创建版本库"

    1.  初始化版本库：

        ``` doscon
        %USERPROFILE%\wdir> git init
        ```

    0.  添加远端库：

        ``` doscon
        %USERPROFILE%\wdir> git remote add <origin> <git@host:wdir.git>
        ```

    0.  绑定当前分支到远端 origin 库：

        ``` doscon
        %USERPROFILE%\wdir> git branch --set-upstream-to=<origin>
        abbr.             > git branch -u <origin>
        ```

    0.  推送本地提交到远端库：

        ``` doscon
        %USERPROFILE%\wdir> git push <origin> <master>
        ```

??? tldr "从远端复制版本库"

    1.  从远端复制版本库：

        ``` doscon
        %USERPROFILE%> git clone <git@host:wdir.git>
        ```

    0.  创建远端分支到本地：

        ``` doscon
        %USERPROFILE%\wdir> git branch --set-upstream-to=<origin/dev> <dev>
        abbr.             > git branch -u <origin/dev> <dev>
        ```

### 分支

???+ tldr "展示分支"

    ``` doscon
    %USERPROFILE%\wdir> git branch
    ```

??? tldr "展示远端分支"

    ``` doscon
    %USERPROFILE%\wdir> git branch --remote
    abbr.             > git branch -r
    ```

??? tldr "创建分支"

    ``` doscon
    %USERPROFILE%\wdir> git branch <dev>
    ```

??? tldr "删除分支"

    ``` doscon
    %USERPROFILE%\wdir> git --delete <dev>
    abbr.             > git -d <dev>
    ```

??? tldr "切换分支"

    ``` doscon
    %USERPROFILE%\wdir> git switch <dev>
    depr.             > git checkout <dev>
    ```

??? tldr "创建并切换分支"

    ``` doscon
    %USERPROFILE%\wdir> git switch --create <dev>
    abbr.             > git switch -c <dev>
    depr.             > git checkout -b <dev>
    ```

### 提交

???+ tldr "查看提交历史"

    ``` doscon
    %USERPROFILE%\wdir> git log [--abbrev-commit --graph --pretty=oneline]
    abbr.             > git log [--graph --online]
    ```

??? tldr "合并分支"

    1.  切换到主分支：

        ``` doscon
        %USERPROFILE%\wdir (dev)> git checkout <master>
        ```

    0.  合并分支：

        ``` doscon
        %USERPROFILE%\wdir (master)> git merge <dev>
        ```

    0.  禁用快进模式，带记录地合并分支：

        ``` doscon
        %USERPROFILE%\wdir (master)> git merge --no-ff -m "<merge with no-ff>" <dev>
        ```

    0.  若希望整理提交历史，将分岔合并：

        ``` doscon
        %USERPROFILE%\wdir (master)> git rebase
        ```

??? tldr "解决冲突"

    1.  出现冲突：

        ……

    0.  查看冲突：

        ``` doscon
        %USERPROFILE%\wdir> git status
        ```

    0.  解决冲突：

        ……

    0.  添加修改：

        ``` doscon
        %USERPROFILE%\wdir> git add <file>
        ```

    0.  提交修改：

        ``` doscon
        %USERPROFILE%\wdir> git commit -m "<conflict fixed>"
        ```

### 标签

???+ tldr "列出标签"

    ``` doscon
    %USERPROFILE%\wdir> git tag 
    ```

??? tldr "查看标签"

    ``` doscon
    %USERPROFILE%\wdir> git show <tagname>
    ```

??? tldr "打标签"

    ``` doscon
    %USERPROFILE%\wdir> git tag <tagname> [commit]
    ```

??? tldr "制作一个带注释的标签"

    ``` doscon
    %USERPROFILE%\wdir> git tag --annotate --message="<message>" <tagname> [commit]
    abbr.             > git tag -a -m "<message>" <tagname> [commit]
    ```

### 暂存区

???+ tldr "与版本库比较"

    ``` doscon
    %USERPROFILE%\wdir> git diff --cached
    ```

??? tldr "提交修改到版本库"

    ``` doscon
    %USERPROFILE%\wdir> git commit --message="<message>"
    abbr.             > git commit -m "<message>"
    ```

??? tldr "回退修改到工作区"

    ``` doscon
    %USERPROFILE%\wdir> git restore --staged <file>...
    depr.             > git reset HEAD [file]...
    ```

### 工作区

???+ tldr "查看工作区状态"

    ``` doscon
    %USERPROFILE%\wdir> git status
    ```

??? tldr "与版本库比较"

    ``` doscon
    %USERPROFILE%\wdir> git diff HEAD
    ```

??? tldr "与暂存区比较"

    ``` doscon
    %USERPROFILE%\wdir> git diff
    ```

??? tldr "添加修改到暂存区"

    ``` doscon
    %USERPROFILE%\wdir> git add <file>...
    ```

??? tldr "放弃修改"

    ``` doscon
    %USERPROFILE%\wdir> git restore <file>...
    depr.             > git checkout -- <file>...
    ```

### 贮藏

???+ tldr "典型用法"

    1.  贮藏脏工作区，以处理突发事件：

        ``` doscon
        %USERPROFILE%\wdir> git stash
        ```

    0.  处理突发事件，譬如漏洞修复：

        ……

    0.  恢复脏工作区，继续之前的工作：

        ``` doscon
        %USERPROFILE%\wdir> git stash pop
        ```

??? tldr "列出脏工作区"

    ``` doscon
    %USERPROFILE%\wdir> git stash list
    ```

??? tldr "恢复脏工作区"

    ``` doscon
    %USERPROFILE%\wdir> git stash apply [stash@{0}]
    ```

??? tldr "丢弃赃工作区"

    ``` doscon
    %USERPROFILE%\wdir> git stash drop [stash@{0}]
    ```

### 其它

???+ tldr "复制特定提交到当前分支"

    ``` doscon
    %USERPROFILE%\wdir> git cherry-pick <commit>
    ```

    常用于将主分支的漏洞修复，应用到开发分支。

## 服务

1.  安装 :material-git: Git：

    ……

0.  创建 `git` 用户：

    ``` console
    [sudoer@host ~]$ sudo useradd --comment 'user for git service' --create-home --shell /usr/bin/git-shell git
    [abbr.        ]$ sudo useradd -c 'user for git service' -m -s /usr/bin/git-shell git
    ```

0.  导入证书，一行一条：

    ``` console
    [sudoer@host ~]$ cd /home/git

    [sudoer@host git]$ sudo --user=git mkdir .ssh
    [abbr.          ]$ sudo -u git mkdir .ssh

    [sudoer@host git]$ sudo --user=git vim .ssh/authorized_keys  
    [abbr.          ]$ sudo -u git vim .ssh/authorized_keys
    ```

0.  初始化仓库：

    ``` console
    [sudoer@host git]$ sudo --user=git git init --bare <wdir.git>
    [abbr.          ]$ sudo -u git git init --bare <wdir.git>
    ```

<!----------------------------------------------------------------------------->

[^Git on Wikipedia]: [Git - Wikipedia](https://wikipedia.org/wiki/Git).

[Git]: https://git-scm.com/
