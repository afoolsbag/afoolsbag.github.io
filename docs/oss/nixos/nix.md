# Nix 包管理器

## 运行 Nix

!!! cite inline end

    *   [Download Nix / NixOS](https://nixos.org/download.html)
    *   [Nix | 中国科学技术大学开源软件镜像](https://mirrors.ustc.edu.cn/help/nix-channels.html)
    *   [Nix | 清华大学开源软件镜像](https://mirrors.tuna.tsinghua.edu.cn/help/nix/)

1.  安装 Nix

    === "官方"

        ``` console
        [sudoer@host ~]$ sh <(curl -L https://nixos.org/nix/install) --daemon
        ```

    === "清华镜像"

        ``` console
        [sudoer@host ~]$ sh <(curl https://mirrors.tuna.tsinghua.edu.cn/nix/latest/install) --daemon
        ```

2.  配置通道

    === "官方"

        ``` console
        [user@host ~]$ nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs
        [user@host ~]$ nix-channel --update
        ```

    === "清华镜像"

        ``` console
        [user@host ~]$ nix-channel --add https://mirrors.tuna.tsinghua.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
        [user@host ~]$ nix-channel --update
        ```

    === "科大镜像"

        ``` console
        [user@host ~]$ nix-channel --add https://mirrors.ustc.edu.cn/nix-channels/nixpkgs-unstable nixpkgs
        [user@host ~]$ nix-channel --update
        ```

3.  配置二进制缓存源

    === "官方"

        ``` ini title="/etc/nix/nix.conf"
        # ......
        substituters = https://cache.nixos.org/
        # ......
        ```

    === "清华镜像"

        ``` ini title="/etc/nix/nix.conf"
        # ......
        substituters = https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store https://cache.nixos.org/
        # ......
        ```

    === "科大镜像"

        ``` ini title="/etc/nix/nix.conf"
        # ......
        substituters = https://mirrors.ustc.edu.cn/nix-channels/store https://cache.nixos.org/
        # ......
        ```

4.  令守护进程重新加载配置

    === ":simple-ubuntu: Ubuntu"

        ``` console
        [sudoer@host ~]$ sudo systemctl reload-or-restart nix-daemon
        ```

## 使用 Nix

<!----------------------------------------------------------------------------->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
