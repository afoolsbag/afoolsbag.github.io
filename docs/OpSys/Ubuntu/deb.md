# Debian 软件包（Debian Package）

参见 [Debian Package Tutorial (dpkg/.deb)](https://www.devdungeon.com/content/debian-package-tutorial-dpkgdeb)。

## `dpkg` 命令

=== ":material-package-variant-closed: 打包"

    ``` console
    # 构建软件包
    [sudoer@host ~]$ dpkg --build <directory> [<deb>]
    ```

=== ":material-package-variant-closed-plus: 安装"

    ``` console
    # 安装软件包
    [sudoer@host ~]$ dpkg --install <deb>
    ```

=== ":material-package-variant-closed-minus: 卸载"

    ``` console
    # 卸载软件包
    [sudoer@host ~]$ dpkg --purge <pkg>
    ```

<!----------------------------------------------------------------------------->

[^deb on Debian Wiki]:       [deb - Debian Wiki](https://wiki.debian.org/deb)
[^Packaging on Debian Wiki]: [Packaging - Debian Wiki](https://wiki.debian.org/Packaging)