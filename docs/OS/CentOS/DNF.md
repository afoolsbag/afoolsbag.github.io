# DNF

[DNF] 是适用于 :material-centos: CentOS、:material-fedora: Fedora 和 :material-redhat: RHEL 操作系统的包管理工具，使用 [RPM] 格式安装包。被设计用以替换 [YUM] 包管理工具。

## 配置仓库

### :material-centos: CentOS

*   新版本的 :material-centos: CentOS 已使用自动仓库镜像，无需手动配置。

    ??? cite "手动配置仓库镜像"

        1.  移除并备份原始仓库配置：

            ``` console
            [sudoer@host *]$ sudo mv /etc/yum.repos.d/CentOS-Base.repo \
                                    /etc/yum.repos.d/CentOS-Base.repo.bck
            ```

        0.  下载并应用[阿里云镜像仓库](https://developer.aliyun.com/mirror/centos)配置：

            ``` console
            [sudoer@host *]$ sudo curl -o /etc/yum.repos.d/CentOS-Base.repo \
                                        https://mirrors.aliyun.com/repo/Centos-6.repo
            [CentOS 7     ]$ sudo curl -o /etc/yum.repos.d/CentOS-Base.repo \
                                        https://mirrors.aliyun.com/repo/Centos-7.repo
            [CentOS 8     ]$ sudo curl -o /etc/yum.repos.d/CentOS-Base.repo \
                                        https://mirrors.aliyun.com/repo/Centos-8.repo
            ```

*   启用 [SCL] 仓库：

    ``` console
    [sudoer@host *]$ sudo dnf install centos-release-scl
    ```

*   启用 [EPEL] 仓库：

    ``` console
    [sudoer@host *]$ sudo dnf install epel-release
    ```

*   同步索引：

    ``` console
    [sudoer@host *]$ dnf clean all
    [sudoer@host *]$ dnf makecache
    ```

## `dnf` 命令

*   检查可用升级

    ``` console
    [sudoer@host *]$ dnf check-update
    ```

*   升级

    ``` console
    [sudoer@host *]$ sudo dnf upgrade
    ```

*   列出组

    ``` console
    [sudoer@host *]$ dnf group list
    ```

*   搜索

    ``` console
    [sudoer@host *]$ dnf search <query>
    ```

*   显示包信息

    ``` console
    [sudoer@host *]$ dnf info <package>
    ```

*   安装包

    ``` console
    [sudoer@host *]$ sudo dnf install <package>
    ```

*   卸载包

    ``` console
    [sudoer@host *]$ sudo dnf remove <package>
    ```

## 使用 `dnf` 安装开发工具集的示例

1.  安装 Open SSH Server 并启用：

    ``` console
    [sudoer@host *]$ sudo dnf install openssh-server
    [sudoer@host *]$ sudo systemctl enable sshd
    [sudoer@host *]$ sudo systemctl start sshd
    ```

0.  安装 Vim：

    ``` console
    [sudoer@host *]$ sudo dnf install vim
    ```

0.  安装开发工具：

    ``` console
    [sudoer@host *]$ sudo dfn group install 'Development Tools'
    ```

0.  若有需要，安装指定版本开发工具，并切换到指定开发环境：

    ``` console
    [sudoer@host *]$ sudo dnf install devtoolset-6 \
                                      devtoolset-7 \
                                      devtoolset-8 \
                                      devtoolset-9
    [sudoer@host *]$ scl enable devtoolset-9 bash
    ```

0.  若有需要，编译安装最新版 [Git](https://git-scm.com/download/linux)：

    ``` console
    [sudoer@host *]$ sudo dnf install asciidoc \
                                      curl-devel \
                                      xmlto \
                                      docbook2x
    [sudoer@host *]$ sudo dnf remove git
    [sudoer@host *]$ cd /usr/local/src
    [sudoer@host src]$ sudo wget https://www.kernel.org/pub/software/scm/git/git-2.32.0.tar.gz
    [sudoer@host src]$ sudo tar -xavf git-2.32.0.tar.gz
    [sudoer@host src]$ cd git-2.32.0
    [sudoer@host git-2.32.0]$ sudo make configure
    [sudoer@host git-2.32.0]$ sudo ./configure
    [sudoer@host git-2.32.0]$ sudo make all \
                                        doc \
                                        info
    [sudoer@host git-2.32.0]$ sudo make install \
                                        install-doc \
                                        install-html \
                                        install-info
    ```

0.  安装 pip3 并配置源：

    ``` console
    [sudoer@host *]$ sudo dnf install python3
    [sudoer@host *]$ pip3 config set global.index-url https://pypi.doubanio.com/simple
    ```

    确保 `PATH` 环境变量包含 `$HOME/.local/bin` 路径；

0.  安装 CMake：

    ``` console
    [sudoer@host *]$ pip3 install cmake
    ```

0.  安装 Conan：

    ``` console
    [sudoer@host *]$ pip3 install conan
    ```

<!----------------------------------------------------------------------------->

[DNF]:  <https://rpm-software-management.github.io/>
[EPEL]: <https://fedoraproject.org/wiki/EPEL>                          "EPEL - Fedora Project Wiki"
[RPM]:  <https://rpm.org/>
[SCL]:  <https://wiki.centos.org/AdditionalResources/Repositories/SCL>
[YUM]:  <http://yum.baseurl.org/>

*[DNF]:  Dandified YUM
*[EPEL]: Extra Packages for Enterprise
*[RPM]:  Red Hat Package Manager
*[SCL]:  Software Collections
*[YUM]:  Yellowdog Updater, Modified
