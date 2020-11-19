# APT

APT 是适用于 :material-debian: Debian、:material-linux: Kali 和 :material-ubuntu: Ubuntu 操作系统的包管理工具。

APT 使用 dpkg 格式安装包，可以通过 [Keryx] 进行离线安装、升级。

## 运行 APT

### :material-linux: Kali

1.  备份原始源

    ``` console
    [sudoer@host ~]$ sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
    ```

0.   配置中科大镜像源

    ``` console
    [sudoer@host ~]$ sudo vim /etc/apt/sources.list
    ```

    ``` text
    deb https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
    deb-src https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
    ```

    参见 <https://mirrors.ustc.edu.cn/kali/>。

0.  同步索引

    ``` console
    [sudoer@host ~]$ sudo apt update
    ```

### :material-ubuntu: Ubuntu

1.  备份原始源

    ``` console
    [sudoer@host ~]$ sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
    ```

0.  配置阿里云镜像源

    ``` console
    [sudoer@host ~]$ sudo vim /etc/apt/sources.list
    ```

    ``` vim
    :%s/archive\.ubuntu\.com/mirrors.aliyun.com/g
    ```

    参见 <https://developer.aliyun.com/mirror/ubuntu>。

0.  同步索引

    ``` console
    [sudoer@host ~]$ sudo apt update
    ```

## `apt` 命令

### 更新包

``` console
[sudoer@host ~]$ sudo apt upgrade
```

### 搜索包

``` console
[sudoer@host ~]$ sudo apt search <name>
```

### 展示包

``` console
[sudoer@host ~]$ sudo apt show <package>
```

### 安装包

``` console
[sudoer@host ~]$ sudo apt install <package>
```

### 卸载包

``` console
[sudoer@host ~]$ sudo apt remove <package>
```

### 卸载残留依赖

``` console
[sudoer@host ~]$ sudo apt autoremove
```

## `apt` 示例

### 安装开发工具链

1.  安装并启用 OpenSSH

    ``` console
    [sudoer@host ~]$ sudo apt install openssh-server

    [sudoer@host ~]$ sudo systemctl enable --now sshd
    ```

0.  安装开发工具

    ``` console
    [sudoer@host ~]$ sudo apt install build-essential vim
    ```

0.  若有需要，安装指定版本 GCC，并切换到指定环境

    ``` console
    [sudoer@host ~]$ sudo add-apt-repository ppa:ubuntu-toolchain-r/test

    [sudoer@host ~]$ sudo apt update

    [sudoer@host ~]$ sudo apt install gcc-9 g++-9

    [sudoer@host ~]$ export CC=/usr/bin/gcc-9

    [sudoer@host ~]$ export CXX=/usr/bin/g++-9
    ```

0.  安装 GDB

    ``` console
    [sudoer@host ~]$ sudo apt install gdb
    ```

0.  安装 pip3 并配置源

    ``` console
    [sudoer@host ~]$ sudo apt install python3-pip

    [sudoer@host ~]$ pip3 config set global.index-url https://pypi.doubanio.com/simple
    ```

    确保 `PATH` 环境变量包含 `$HOME/.local/bin`

0.  安装 CMake

    ``` console
    [sudoer@host ~]$ pip3 install cmake
    ```

    或从官网安装包安装

    ``` console
    [sudoer@host ~]$ sudo wget --directory-prefix=/usr/local/src https://cmake.org/files/v3.17/cmake-3.17.3-Linux-x86_64.sh

    [sudoer@host ~]$ sudo chmod u+x /usr/local/src/cmake-3.17.3-Linux-x86_64.sh

    [sudoer@host ~]$ sudo /usr/local/src/cmake-3.17.3-Linux-x86_64.sh --prefix=/usr/local --exclude-subdir --skip-license
    ```

0.  安装 Conan

    ``` console
    [sudoer@host ~]$ pip3 install conan
    ```

    或从官网安装包安装

    ``` console
    [sudoer@host ~]$ sudo wget --directory-prefix=/usr/local/src https://dl.bintray.com/conan/installers/conan-ubuntu-64_1_26_0.deb

    [sudoer@host ~]$ sudo dpkg --install /usr/local/src/conan-ubuntu-64_1_26_0.deb
    ```

<!----------------------------------------------------------------------------->

[APT]:   https://wiki.debian.org/Apt
[Keryx]: https://launchpad.net/keryx

*[APT]:  Advanced Package Tool
*[dpkg]: Debian Package
