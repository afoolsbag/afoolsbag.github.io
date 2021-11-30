# Git

[:material-git: Git][Git] 是一款分布式版本控制系统。[^Git on Wikipedia]

参见：

*   [NDP Software :: Git Cheatsheet](https://ndpsoftware.com/git-cheatsheet.html)
*   [GitHub Git 备忘单 - GitHub Cheatsheets](https://training.github.com/)
*   [Git Cheat Sheet | Tower Blog](https://www.git-tower.com/blog/git-cheat-sheet/)
*   [Developing AngularJS § Git Commit Guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guidelines)
*   [A collection of .gitignore templates](https://github.com/github/gitignore)
*   [Git教程 - 廖雪峰的官方网站](https://liaoxuefeng.com/wiki/896043488029600)
*   [Sourcetree | Free Git GUI for Mac and Windows](https://sourcetreeapp.com/)
*   [TortoiseGit – Windows Shell Interface to Git](https://tortoisegit.org/)

## 运行 :material-git: Git

??? example "在 :material-microsoft-windows: Windows 10 中安装 :material-git: Git"

    官方网站 [:material-git: Git][Git]。

??? example "在 :material-microsoft-windows: Windows 10 中通过 :fontawesome-brands-sourcetree: Sourcetree 安装 :material-git: Git"

    [:fontawesome-brands-sourcetree: Sourcetree][Sourcetree] 中内置 :material-git: Git 支持。

??? example "在 :material-microsoft-windows: Windows 10 中通过 Scoop 安装 :material-git: Git"

    ``` doscon
    %USERPROFILE%> scoop install git
    ```

## 常用操作

### 配置

??? example "在用户级别配置代理"

    ``` doscon
    %USERPROFILE%> notepad %USERPROFILE%\.gitconfig
    ```

    ``` ini
    [http "https://github.com"]
    	proxy = http://127.0.0.1:41091
    ```

### 创建版本仓库

??? example "将一个文件夹初始化为版本仓库，交由 :material-git: Git 管理<br>:material-folder: Directory --> :material-source-repository: Repository"

    === "使用 :fontawesome-brands-sourcetree: Sourcetree 图形化界面操作"

        1.  运行 :fontawesome-brands-sourcetree: Sourcetree 应用程序；
        0.  在**主界面**的 **New tab** 标签页中，选中 **Create** 选项卡；
        0.  填写**目标路径**编辑框，譬如 `D:\Workspace\ExampleRepository`；
        0.  **名字**编辑框将自动填充，可以按需调整；
        0.  点击**创建**按钮。

    === "使用 :material-git: Git 命令行界面操作"

        1.  变换到目标目录：

            ``` doscon
            %USERPROFILE%> cd wdir
            ```

        0.  初始化版本库：

            ``` doscon
            %USERPROFILE%\wdir> git init
            ```

<!--
        0.  添加远端库：

            ``` doscon
            %USERPROFILE%\wdir> git remote add <origin> <git@host:wdir.git>
            ```

        0.  绑定当前分支到远端 `origin` 库：

            ``` doscon
            %USERPROFILE%\wdir> git branch --set-upstream-to=<origin>
            abbr.             > git branch -u <origin>
            ```

        0.  推送本地提交到远端库：

            ``` doscon
            %USERPROFILE%\wdir> git push <origin> <master>
            ```
-->

??? example "将一个远程版本仓库克隆到本地<br>:material-server: Remote --> (:material-source-repository: Repository) --> :material-laptop: Local"

    === "使用 :fontawesome-brands-sourcetree: Sourcetree 图形化界面操作"

        1.  启动 :fontawesome-brands-sourcetree: Sourcetree 应用程序；
        0.  在主界面的 **New tab** 标签页中，选中 **Clone** 选项卡；
        0.  填写**源路径 / URL** 编辑框，譬如 `git@github.com:afoolsbag/ExampleRepository.git`；
        0.  **目标路径**编辑框和**名字**编辑框将自动填充，可以按需调整；
        0.  点击**克隆**按钮。

    === "使用 :material-git: Git 命令行界面操作"

        1.  变换到目标目录：

            ``` doscon
            %USERPROFILE%> cd wdir
            ```

        0.  从远端复制版本库：

            ``` doscon
            %USERPROFILE%> git clone <git@host:wdir.git>
            ```

        0.  创建远端分支到本地：

            ``` doscon
            %USERPROFILE%\wdir> git branch --set-upstream-to=<origin/dev> <dev>
            abbr.             > git branch -u <origin/dev> <dev>
            ```

### 工作区

??? example "将工作区的变动同步到暂存区<br>:material-folder: Working Directory --> (:material-file-multiple: Changes) --> :material-package: Stage"

    === "使用 :fontawesome-brands-sourcetree: Sourcetree 图形化界面操作"

        1.  运行 :fontawesome-brands-sourcetree: Sourcetree 应用程序；
        0.  在主界面的 **Local** 标签页中，双击目标存储仓库将其打开；
        0.  点选侧边栏的**文件状态**选项卡，或使用快捷键 ++ctrl+1++，切换到文件状态界面；
        0.  在**未暂存文件**列表区域里，点选想要暂存的文件，然后点击**暂存所选**按钮将其暂存；或点击**暂存所有**按钮将所有变动全部暂存。

        !!! tip

            若 :fontawesome-brands-sourcetree: Sourcetree 未及时检测到文件变动，可使用快捷键 ++f5++ 进行刷新。

    === "使用 :material-git: Git 命令行界面操作"

        1.  查看工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

        0.  将文件同步到暂存区：

            ``` doscon
            %USERPROFILE%/wdir> git add <file> ...
            ```

        0.  验证工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

??? example "改动有误，需要将工作区的文件恢复原样<br>:material-trash-can: Trash <-- (:material-file-multiple: Changes) <-- :material-folder: Working Directory"

    === "使用 :fontawesome-brands-sourcetree: Sourcetree 图形化界面操作"

        1.  运行 :fontawesome-brands-sourcetree: Sourcetree 应用程序；
        0.  在主界面的 **Local** 标签页中，双击目标存储仓库将其打开；
        0.  点选侧边栏的**文件状态**选项卡，或使用快捷键 ++ctrl+1++，切换到文件状态界面；
        0.  在**未暂存文件**列表区域里，点选想要丢弃的文件，然后右击打开关联菜单，并点击**丢弃**选项，或使用 ++ctrl+shift+r++ 快捷键将其丢弃。

    === "使用 :material-git: Git 命令行界面操作"

        1.  查看工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

        0.  将文件改动丢弃：

            ``` doscon
            %USERPROFILE%\wdir> git restore <file>...
            depr.             > git checkout -- <file>...
            ```

        0.  验证工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```


### 暂存区

??? example "将暂存区中记录的变动，提交到版本仓库<br>:material-package: Stage --> (:material-file-multiple: Changes) --> :material-source-branch: Branch"

    === "使用 :fontawesome-brands-sourcetree: Sourcetree 图形化界面操作"

        1.  运行 :fontawesome-brands-sourcetree: Sourcetree 应用程序；
        0.  在主界面的 **Local** 标签页中，双击目标存储仓库将其打开；
        0.  点选侧边栏的**文件状态**选项卡，或使用快捷键 ++ctrl+1++，切换到文件状态界面；
        0.  在**已暂存文件**列表区域里确认将提交的变动；
        0.  在提交消息编辑框中填写提交消息；
        0.  点击**提交**按钮。

        !!! tip

            提交消息的编写格式可以参考 [Developing AngularJS § Git Commit Guidelines](https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guidelines)。
            
    === "使用 :material-git: Git 命令行界面操作"

        1.  查看工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

        0.  将变动提交到版本仓库：

            ``` doscon
            %USERPROFILE%\wdir> git commit --message="<message>"
            abbr.             > git commit -m "<message>"
            ```

        0.  验证工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

??? example "暂存有误，需要将已暂存的变动撤回到工作区<br>:material-folder: Working Directory <-- (:material-file-multiple: Changes) <-- :material-package: Stage"

    === "使用 :fontawesome-brands-sourcetree: Sourcetree 图形化界面操作"

        1.  运行 :fontawesome-brands-sourcetree: Sourcetree 应用程序；
        0.  在主界面的 **Local** 标签页中，双击目标存储仓库将其打开；
        0.  点选侧边栏的**文件状态**选项卡，或使用快捷键 ++ctrl+1++，切换到文件状态界面；
        0.  在**已暂存文件**列表区域里，点选想要撤回的文件，然后右击打开关联菜单，并点击**丢弃**选项，或使用 ++ctrl+shift+r++ 快捷键将其撤回。

    === "使用 :material-git: Git 命令行界面操作"

        1.  查看工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

        0.  将变动撤回到工作区：

            ``` doscon
            %USERPROFILE%\wdir> git restore --staged <file>...
            depr.             > git reset HEAD [file]...
            ```

        0.  验证工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

### 版本回退

??? example "提交有误，譬如少提交了一个文件，需要将上次提交的变动撤回到暂存区<br>:material-package: Stage <-- (:material-file-multiple: Changes) <-- :material-source-branch: Branch"

    !!! attention

        操作前记得检查暂存区是否干净，以免将新旧暂存区混在一起，难以区分。

    === "使用 :fontawesome-brands-sourcetree: Sourcetree 图形化界面操作"

        1.  运行 :fontawesome-brands-sourcetree: Sourcetree 应用程序；
        0.  在主界面的 **Local** 标签页中，双击目标存储仓库将其打开；
        0.  点选侧边栏的**文件状态**选项卡，或使用快捷键 ++ctrl+1++，切换到文件状态界面；
        0.  检查**已暂存文件**列表区域是否干净；
        0.  点选侧边栏的 **History** 选项卡，或使用快捷键 ++ctrl+2++，切换到历史界面；
        0.  右击欲抵达的提交，打开关联菜单，点击**重置当前分支到此次提交**选项，选择**软合并 - 保持所有本地改动**模式，点击**确定**按钮。

    === "使用 :material-git: Git 命令行界面操作"

        1.  查看工作区状态，检查暂存区是否干净：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

        0.  查看提交历史：

            ``` doscon
            %USERPROFILE%\wdir> git log [--abbrev-commit --graph --pretty=oneline]
            abbr.             > git log [--graph --online]
            ```
        
        0.  撤回上次提交的变动到暂存区：

            ``` doscon
            %USERPROFILE%\wdir> git reset --soft HEAD^
            ```

        0.  验证提交历史：

            ``` doscon
            %USERPROFILE%\wdir> git log [--abbrev-commit --graph --pretty=oneline]
            abbr.             > git log [--graph --online]
            ```

        0.  验证工作区状态：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```

### 冲突处理

??? example "拉取代码，修修改改，推送代码，Duang——版本冲突 :fontawesome-regular-sad-tear:"

    === "使用 :material-git: Git 命令行界面操作"

        1.  查看工作区状态，检查工作区和暂存区是否干净：

            ``` doscon
            %USERPROFILE%/wdir> git status
            ```
        
        0.  向远端推送提交：

            ``` doscon
            %USERPROFILE%/wdir> git push <remote> <branch>
            ```

        0.  冲突！

        0.  从远端拉取提交，以更新版本仓库到最新：

            ``` doscon
            %USERPROFILE%/wdir> git pull [branch]
            ```

        0.  查看冲突：

            ``` doscon
            %USERPROFILE%\wdir> git status
            ```

        0.  编辑冲突项，解决冲突，同步变动并提交：

            ``` doscon
            %USERPROFILE%/wdir> git add <file> ...

            %USERPROFILE%\wdir> git commit --message="<conflict fixed>"
            abbr.             > git commit -m "<conflict fixed>"
            ```

        0.  向远端推送提交：

            ``` doscon
            %USERPROFILE%/wdir> git push <remote> <branch>
            ```

## `git` 命令

??? example "列出所有配置"

    ``` doscon
    %USERPROFILE%> git config --list
    abbr.        > git config -l
    ```

??? example "列出系统配置"

    ``` doscon
    %USERPROFILE%> git config --system --list
    abbr.        > git config --system -l
    ```

    :material-linux: `/etc/gitconfig`  
    :material-microsoft-windows: `%ALLUSERSPROFILE%\Git\config`

??? example "列出用户配置"

    ``` doscon
    %USERPROFILE%> git config --global --list
    abbr.        > git config --global -l
    ```

    :material-linux: `~/.gitconfig`  
    :material-microsoft-windows: `%USERPROFILE%\.gitconfig`

??? example "为当前用户设置名称和邮箱"

    ``` doscon
    %USERPROFILE%> git config --global user.name "<name>"

    %USERPROFILE%> git config --global user.email "<email@example.com>"
    ```

??? example "列出项目配置"

    ``` doscon
    %USERPROFILE%> git config --local --list
    abbr.        > git config --local -l
    ```

    :material-linux: `.git/config`  
    :material-microsoft-windows: `.git\config`

??? example "生成 SSH 密钥对"

    ``` doscon
    %USERPROFILE%> ssh-keygen -t rsa -C "<email@example.com>"
    ```

??? example "列出远端库"

    ``` doscon
    %USERPROFILE%\wdir> git remote --verbose
    abbr.             > git remote -v
    ```

??? example "展示分支"

    ``` doscon
    %USERPROFILE%\wdir> git branch
    ```

??? example "展示远端分支"

    ``` doscon
    %USERPROFILE%\wdir> git branch --remote
    abbr.             > git branch -r
    ```

??? example "创建分支"

    ``` doscon
    %USERPROFILE%\wdir> git branch <dev>
    ```

??? example "删除分支"

    ``` doscon
    %USERPROFILE%\wdir> git --delete <dev>
    abbr.             > git -d <dev>
    ```

??? example "切换分支"

    ``` doscon
    %USERPROFILE%\wdir> git switch <dev>
    depr.             > git checkout <dev>
    ```

??? example "创建并切换分支"

    ``` doscon
    %USERPROFILE%\wdir> git switch --create <dev>
    abbr.             > git switch -c <dev>
    depr.             > git checkout -b <dev>
    ```

??? example "查看提交历史"

    ``` doscon
    %USERPROFILE%\wdir> git log [--abbrev-commit --graph --pretty=oneline]
    abbr.             > git log [--graph --online]
    ```

??? example "合并分支"

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

??? example "列出标签"

    ``` doscon
    %USERPROFILE%\wdir> git tag 
    ```

??? example "查看标签"

    ``` doscon
    %USERPROFILE%\wdir> git show <tagname>
    ```

??? example "打标签"

    ``` doscon
    %USERPROFILE%\wdir> git tag <tagname> [commit]
    ```

??? example "制作一个带注释的标签"

    ``` doscon
    %USERPROFILE%\wdir> git tag --annotate --message="<message>" <tagname> [commit]
    abbr.             > git tag -a -m "<message>" <tagname> [commit]
    ```

??? example "与版本库比较"

    ``` doscon
    %USERPROFILE%\wdir> git diff --cached
    ```

??? example "查看工作区状态"

    ``` doscon
    %USERPROFILE%\wdir> git status
    ```

??? example "与版本库比较"

    ``` doscon
    %USERPROFILE%\wdir> git diff HEAD
    ```

??? example "与暂存区比较"

    ``` doscon
    %USERPROFILE%\wdir> git diff
    ```

??? example "典型用法"

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

??? example "列出脏工作区"

    ``` doscon
    %USERPROFILE%\wdir> git stash list
    ```

??? example "恢复脏工作区"

    ``` doscon
    %USERPROFILE%\wdir> git stash apply [stash@{0}]
    ```

??? example "丢弃赃工作区"

    ``` doscon
    %USERPROFILE%\wdir> git stash drop [stash@{0}]
    ```

??? example "复制特定提交到当前分支"

    ``` doscon
    %USERPROFILE%\wdir> git cherry-pick <commit>
    ```

    常用于将主分支的漏洞修复，应用到开发分支。

## :material-git: Git 服务

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

[Git]:        <https://git-scm.com/>
[GitFlow]:    <https://github.com/nvie/gitflow> 
[Sourcetree]: <https://www.sourcetreeapp.com/>
