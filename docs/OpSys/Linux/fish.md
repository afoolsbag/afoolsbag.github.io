# 友好交互壳层（Friendly Interactive Shell）

[fish] 是一款跨平台的命令行壳层。

## 运行 fish

=== ":material-arch: Arch"

    ``` console
    [sudoer@host *]$ sudo pacman --sync fish
    ```

=== ":material-centos: CentOS"

    1.  启用 [EPEL] 仓库：

        ``` console
        [sudoer@host *]$ sudo dnf install epel-release
        ```

    0.  安装 fish：

        ``` console
        [sudoer@host *]$ sudo yum install fish
        ```

=== "Kali"

    ``` console
    sudoer@host:*$ sudo apt install fish
    ```

=== ":material-ubuntu: Ubuntu"

    ``` console
    sudoer@host:*$ sudo apt install fish
    ```

## 常用命令

*   查看当前壳层：

    ``` console
    [user@host *]$ echo $SHELL
    ```

*   查看可用壳层：

    ``` console
    [user@host *]$ chsh --list-shells
    [abbr.      ]$ chsh -l
    ```

*   切换默认壳层（重新登陆以生效）：

    ``` console
    [user@host *]$ chsh --shell /usr/bin/fish [username]
    [abbr.      ]$ chsh -s /usr/bin/fish [username]
    ```

*   查看已配置的命令别名：

    ``` console
    [user@host *]$ alias
    ```

*   设置一个命令别名：

    ``` console
    [user@host *]$ alias ll='ls --all -l --classify --color=auto'
    ```

*   取消一个命令别名：

    ``` console
    [user@host *]$ unalias ll
    ```

## 壳层环境

### bash

*   系统环境变量（键值对列表）
    *   `/etc/environment`
*   系统配置（脚本）
    *   `/etc/profile`
    *   `/etc/profile.d/*.sh`
    *   `/etc/profile.d/sh.local`（:material-centos: CentOS）
*   系统壳层配置（脚本）
    *   `/etc/bash.bashrc`（:material-ubuntu: Ubuntu）
    *   `/etc/bashrc`（:material-centos: CentOS）
*   用户环境变量（键值对）
    *   `~/.pam_environment`（:material-ubuntu: Ubuntu）
*   用户配置（脚本）
    *   `~/.profile`
*   用户壳层配置（脚本）
    *   `~/.bash_profile`
    *   `~/.bashrc`

``` sh
export PATH="${PATH}:/path/to/directory"
```

### fish

*   系统配置（脚本）
    *   `/etc/fish/config.fish`
    *   `/etc/fish/conf.d/*.fish`
*   用户配置（脚本）
    *   `~/.config/fish/config.fish`
    *   `~/.config/fish/conf.d/*.fish`

``` fish
set --export PATH {$PATH} /path/to/directory
```

<!----------------------------------------------------------------------------->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
