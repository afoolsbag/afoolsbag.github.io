# 高级软件包工具（Advanced Package Tool）

[APT] 是适用于 :material-debian: Debian、:fontawesome-brands-linux: Kali 和 :fontawesome-brands-ubuntu: Ubuntu 操作系统的软件包管理工具。

*   APT 使用 [dpkg] 格式安装包；
*   APT 可以通过 [Synaptic] GUI 进行管理；
*   APT 可以通过 [Aptitude] CLI 进行管理；
*   APT 可以通过 [Keryx] 进行离线安装、升级。

## 运行 APT

=== ":fontawesome-brands-linux: Kali"

    ``` console
    # 备份原始源
    [sudoer@host ~]$ sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak

    # 配置中科大镜像源
    [sudoer@host ~]$ sudo vim /etc/apt/sources.list
    ```

    ``` text title="/etc/apt/sources.list"
    deb https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
    deb-src https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
    ```

    ``` console
    # 更新索引
    [sudoer@host ~]$ sudo apt update
    ```

    参见 <https://mirrors.ustc.edu.cn/help/kali.html>。

=== ":fontawesome-brands-ubuntu: Ubuntu"

    ``` console
    # 使用阿里云镜像源
    sudoer@host:*$ sudo sed --in-place=.bak \
                            's/archive\.ubuntu\.com/mirrors.aliyun.com/g' \
                            /etc/apt/sources.list

    # 更新索引
    sudoer@host:*$ sudo apt update
    ```

    参见 <https://developer.aliyun.com/mirror/ubuntu>。

## 使用 APT

### 源管理

=== ":material-refresh: `update`"

    ``` console
    # 更新索引
    [sudoer@host *]$ sudo apt update
    ```

### 软件包管理

=== ":material-magnify: `search`"

    ``` console
    # 搜索软件包
    [sudoer@host *]$ apt search <name>
    ```

=== ":material-plus: `install`"

    ``` console
    # 安装软件包
    [sudoer@host *]$ sudo apt install <package>
    ```

=== ":material-information-variant: `show`"

    ``` console
    # 列出已安装的软件包
    [sudoer@host *]$ apt list --installed

    # 展示软件包
    [sudoer@host *]$ apt show <package>
    ```

=== ":material-refresh: `upgrade`"

    ``` console
    # 更新软件包
    [sudoer@host *]$ sudo apt upgrade <package>
    ```

=== ":material-minus: `remove`"

    ``` console
    # 卸载软件包
    [sudoer@host *]$ sudo apt remove <package>

    # 卸载残留依赖
    [sudoer@host *]$ sudo apt autoremove
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

[^Apt on Debian Wiki]:      [Apt - Debian Wiki](https://wiki.debian.org/Apt)
[^Aptitude on Debian Wiki]: [Aptitude - Debian Wiki](https://wiki.debian.org/Aptitude)

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
