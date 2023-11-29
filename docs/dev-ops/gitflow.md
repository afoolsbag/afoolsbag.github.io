# GitFlow

see also [Trunk-based development](https://trunkbaseddevelopment.com/)

atlassian <https://www.atlassian.com/continuous-delivery/continuous-integration/trunk-based-development>


[GitFlow] 是一种 :material-git: Git 工作流规范。[^GitFlow on Atlassian]
<https://nvie.com/posts/a-successful-git-branching-model/>

??? cite "流程一览"

    ![git-flow.png](gitflow-overview.png)

参见 [Using git-flow to automate your git branching workflow](https://jeffkreeftmeijer.com/git-flow/)。

## 安装 GitFlow

??? tldr "在 :material-microsoft-windows: Windows 10 中通过 :material-git: Git 安装"

    [:material-git: Git][Git] 中内置 GitFlow 支持。

??? tldr "在 :material-microsoft-windows: Windows 10 中通过 :fontawesome-brands-sourcetree: Sourcetree 安装"

    [:fontawesome-brands-sourcetree: Sourcetree][Sourcetree] 中内置 GitFlow 支持。

参见 [git-flow cheatsheet § Setup](https://danielkummer.github.io/git-flow-cheatsheet/index.html#setup)。

## 初始化 GitFlow

!!! hint "提示"

    GitFlow 需要项目具有 `master` 分支以岔出 `develop` 分支，因而需要初始提交。

???+ tldr "使用命令行操作"

    ``` doscon
    %USERPROFILE%> git flow init
    ```

参见 [git-flow cheatsheet § Getting started](https://danielkummer.github.io/git-flow-cheatsheet/index.html#getting_started)。

## 开发功能

???+ tldr "使用命令行操作"

    1.  创建功能开发分支：

        ``` doscon
        %USERPROFILE%> git flow feature start <new-feature>
        ```

    0.  开发功能并提交变动；

    0.  完成功能开发，合并功能分支（`feature/new-feature`）到开发分支（`develop`）：

        ``` doscon
        %USERPROFILE%> git flow feature finish <new-feature>
        ```

参见 [git-flow cheatsheet § Features](https://danielkummer.github.io/git-flow-cheatsheet/index.html#features)。

## 发布版本

???+ tldr "使用命令行操作"

    1.  创建版本发布分支：

        ``` doscon
        %USERPROFILE%> git flow release start <version>
        ```

    0.  同步版本号、同步文档、清理冗余、进行测试等，并提交变动；

    0.  完成版本发布，合并版本分支（`release/version`）到主分支（`master`）和开发分支（`develop`）：

        ``` doscon
        %USERPROFILE%> git flow release finish <version>
        ```

参见 [git-flow cheatsheet § Make a release](https://danielkummer.github.io/git-flow-cheatsheet/index.html#release)。

## 修复漏洞

???+ tldr "使用命令行操作"

    1.  创建漏洞修复分支：

        ``` doscon
        %USERPROFILE%> git flow hotfix start <fix>
        ```

    0.  修复漏洞并提交变动；

    0.  完成漏洞修复，合并补丁分支（`hotfix/fix`）到主分支（`master`）和开发分支（`develop`）：

        ``` doscon
        %USERPROFILE%> git flow hotfix finish <fix>
        ```

参见 [git-flow cheatsheet § Hotfixes](https://danielkummer.github.io/git-flow-cheatsheet/index.html#hotfixes)。

<!----------------------------------------------------------------------------->

[^GitFlow on Atlassian]: [Gitflow Workflow | Atlassian Git Tutorial](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow).

[Git]:        <https://git-scm.com/>
[GitFlow]:    <https://github.com/nvie/gitflow> 
[Sourcetree]: <https://www.sourcetreeapp.com/>
