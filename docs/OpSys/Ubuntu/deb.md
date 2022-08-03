# Debian 软件包（Debian Package）

## `dpkg` 命令

=== ":material-package-variant-closed: 打包"

    ``` console
    # 构建软件包
    sudoer@host:~$ sudo dpkg-deb --build <directory> [<deb>]
    [abbr.      ]$ sudo dpkg      -b     <directory> [<deb>]
    ```

=== ":material-package-variant: 信息"

    ``` console
    # 查看软件包
    sudoer@host:~$ dpkg-deb --info <deb>
    [abbr.      ]$ dpkg     -I    <deb>
    ```

=== ":material-package-variant-closed-plus: 安装"

    ``` console
    # 安装软件包
    sudoer@host:~$ sudo dpkg --install <deb>
    [abbr.      ]$ sudo dpkg  -i       <deb>
    ```

=== ":material-package-variant-closed-minus: 卸载"

    ``` console
    # 卸载软件包但保留配置
    sudoer@host:~$ sudo dpkg --remove <pkg>
    [abbr.      ]$ sudo dpkg  -r      <pkg>

    # 卸载软件包并清空配置
    sudoer@host:~$ sudo dpkg --purge <pkg>
    [abbr.      ]$ sudo dpkg  -P     <pkg>
    ```

## Debian Package

!!! cite inline end

    *   [Debian Package Tutorial (dpkg/.deb)](https://www.devdungeon.com/content/debian-package-tutorial-dpkgdeb)
    *   [Debian Policy Manual § 3. Binary packages](https://www.debian.org/doc/debian-policy/ch-binary.html)
    *   [Debian Policy Manual § 10.9. Permissions and owners](https://www.debian.org/doc/debian-policy/ch-files.html#permissions-and-owners)
    *   [Packaging - Debian Wiki](https://wiki.debian.org/Packaging)

```
mypkg_1.0.0-0               # drwxr-xr-x root root
├── DEBIAN                  # drwxr-xr-x root root
│   ├── conffiles           # -rw-r--r-- root root
│   ├── control             # -rw-r--r-- root root
│   ├── preinst             # -rwxr-xr-x root root
│   ├── prerm               # -rwxr-xr-x root root
│   ├── postinst            # -rwxr-xr-x root root
│   └── postrm              # -rwxr-xr-x root root
├── etc                     # drwxr-xr-x root root
│   └── mypkg.conf          # -rw-r--r-- root root
├── opt                     # drwxr-xr-x root root
│   └── mypkg               # drwxr-xr-x root root
└── usr                     # drwxr-xr-x root root
    ├── bin                 # drwxr-xr-x root root
    │   └── myapp           # -rwxr-xr-x root root
    └── lib                 # drwxr-xr-x root root
        └── mylib.so.1.0.0  # -rw-r--r-- root root
```

``` console title="Bash session"
user@host:~$ sudo dpkg-deb --build \
                           "./mypkg_1.0.0" \
                           "./mypkg_1.0.0-0_$(dpkg-architecture | awk -F '=' 'NR==1 && /DEB_BUILD_ARCH/ {print $2}').deb"
abbr@.     $ sudo dpkg      -b \
                           "./mypkg_1.0.0" \
                           "./mypkg_1.0.0-0_$(dpkg-architecture | awk -F '=' 'NR==1 && /DEB_BUILD_ARCH/ {print $2}').deb"
```

### `DEBIAN/control`

!!! cite inline end

    [Debian Policy Manual § 5. Control files and their fields](https://www.debian.org/doc/debian-policy/ch-controlfields.html)。

``` debcontrol title="DEBIAN/control"
--8<-- "includes/OpSys/Ubuntu/deb/control"
```

### `DEBIAN/conffiles`

!!! cite inline end

    *   [Debian Policy Manual § 3. Binary packages](https://www.debian.org/doc/debian-policy/ch-binary.html)
    *   [Debian Policy Manual § 10.7. Configuration files](https://www.debian.org/doc/debian-policy/ch-files.html#s-config-files)

``` title="DEBIAN/conffiles"
--8<-- "includes/OpSys/Ubuntu/deb/conffiles"
```

### `DEBIAN/{pre|post}{inst|rm}`

!!! cite inline end

    [Debian Policy Manual § 6. Package maintainer scripts and installation procedure](https://www.debian.org/doc/debian-policy/ch-maintainerscripts.html)。

=== "`DEBIAN/preinst`"

    ``` bash title="DEBIAN/preinst"
    --8<-- "includes/OpSys/Ubuntu/deb/preinst"
    ```

=== "`DEBIAN/postinst`"

    ``` bash title="DEBIAN/postinst"
    --8<-- "includes/OpSys/Ubuntu/deb/postinst"
    ```

=== "`DEBIAN/prerm`"

    ``` bash title="DEBIAN/prerm"
    --8<-- "includes/OpSys/Ubuntu/deb/prerm"
    ```

=== "`DEBIAN/postrm`"

    ``` bash title="DEBIAN/postrm"
    --8<-- "includes/OpSys/Ubuntu/deb/postrm"
    ```

<!----------------------------------------------------------------------------->

[^deb on Debian Wiki]:       [deb - Debian Wiki](https://wiki.debian.org/deb)
[^Packaging on Debian Wiki]: [Packaging - Debian Wiki](https://wiki.debian.org/Packaging)

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
