# Pacman

[Pacman] 是适用于 :material-arch: Arch 和 MSYS2 的包管理工具。

## 运行 Pacman

### :material-arch: Arch

对于最简系统，没有预安装文本编辑器，而某些地区与默认源的连接带宽并不理想。
推荐安装小巧的 [nano] 文本编辑器，编辑镜像源，以改善连接带宽。

1.  安装 [nano]

    ``` console
    [sudoer@host ~]$ sudo pacman --sync nano
    [abbr.        ]$ sudo pacman -S nano
    ```

0.  配置镜像源

    ``` console
    [sudoer@host ~]$ sudo nano /etc/pacman.d/mirrorlist
    ```

0.  同步索引

    ``` console
    [sudoer@host ~]$ sudo pacman --sync --refresh
    [abbr.        ]$ sudo pacman -Sy
    ```

## `pacman` 命令

### 同步索引并更新包

``` console
[sudoer@host ~]$ sudo pacman --sync --refresh --sysupgrade
[abbr.        ]$ sudo pacman -Syu
```

### 搜索包

``` console
[sudoer@host ~]$ pacman --sync --search <regex>
[abbr.        ]$ pacman -Ss <regex>
```

### 查看包信息

``` console
[sudoer@host ~]$ pacman --sync --info <package>
[abbr.        ]$ pacman -Si <package>
```

### 安装包

``` console
[sudoer@host ~]$ sudo pacman --sync <package>
[abbr.        ]$ sudo pacman -S <package>
```

### 卸载包

``` console
[sudoer@host ~]$ sudo pacman --remove <package>
[abbr.        ]$ sudo pacman -R <package>
```

### 卸载残留依赖

``` console
[sudoer@host ~]$ sudo pacman --remove --recursive $(pacman --query --unrequired --deps --quiet)
[abbr.        ]$ sudo pacman -Rs $(pacman -Qtdq)
```

## `pacman` 示例

### 安装开发工具

1.  安装并启用 [OpenSSH]

    ``` console
    [sudoer@host ~]$ sudo pacman --sync openssh
    [abbr.        ]$ sudo pacman -S openssh

    [sudoer@host ~]$ sudo systemctl enable --now sshd
    ```

0.  安装开发工具

    ``` console
    [sudoer@host ~]$ sudo pacman --sync base-devel man vim
    [abbr.        ]$ sudo pacman -S base-devel man vim
    ```

0.  安装 pip 并配置源

    ``` console
    [sudoer@host ~]$ sudo pacman --sync python-pip
    [abbr.        ]$ sudo pacman -S python-pip

    [sudoer@host ~]$ pip config set global.index-url https://pypi.doubanio.com/simple
    ```

    确保 `PATH` 环境变量包含 `$HOME/.local/bin`

0.  安装 CMake

    ``` console
    [sudoer@host ~]$ pip install cmake
    ```

0.  安装 Conan

    ``` console
    [sudoer@host ~]$ pip install conan
    ```

<!----------------------------------------------------------------------------->

[nano]:   https://www.nano-editor.org/
[OpenSSH]: https://www.openssh.com/
[Pacman]: https://www.archlinux.org/pacman/
