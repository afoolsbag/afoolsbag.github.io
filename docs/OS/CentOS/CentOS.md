# CentOS

[:material-centos: CentOS][CentOS] 是一款 GNU/Linux 发行版操作系统。

## 常见问题

### 语言环境支持

1.  安装语言环境

    ``` console
    [sudoer@host *]$ sudo dnf install glibc-locale-source
    [sudoer@host *]$ sudo dnf install glibc-langpack-en
    ```

0.  定义语言环境

    ``` console
    [sudoer@host *]$ sudo localedef --inputfile=en_US --charmap=UTF-8 --verbose en_US.UTF-8
    [abbr.        ]$ sudo localedef -i en_US -f UTF-8 -v en_US.UTF-8
    ```

0.  安装字体库

    ``` console
    [sudoer@host *]$ sudo dnf group install Fonts
    ```

### 修改壳层语言环境

1.  显示当前会话语言环境

    ``` console
    [sudoer@host *]$ locale
    ```

0.  列出可用语言环境

    ``` console
    [sudoer@host *]$ locale --all-locales
    [abbr.        ]$ locale -a
    ```

0.  设置语言环境

    ``` console
    [sudoer@host *]$ vim ~/.bash_profile                 
    ```

    ``` sh
    LANG='zh_CN.utf8'
    ```

0.  重新登陆以重启壳层

    ``` console
    [sudoer@host *]$ exit
    ```

### 修改系统语言环境

1.  显示当前系统语言环境

    ``` console
    [sudoer@host *]$ localectl status
    ```

0.  列出可用语言环境

    ``` console
    [sudoer@host *]$ localectl list-locales
    ```

0.  设置语言环境，强烈建议选用 .utf8 后缀的语言环境

    ``` console
    [sudoer@host *]$ sudo localectl set-locale <locale>
    ```

<!----------------------------------------------------------------------------->

[CentOS]: https://www.centos.org/

*[CentOS]: Community Enterprise Operating System
