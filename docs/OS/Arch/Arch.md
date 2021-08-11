# Arch

[:material-arch: Arch][Arch] 是一款 GNU/Linux 发行版操作系统。

## 运行 Arch

参见 [Installation guide (简体中文) - ArchWiki](https://wiki.archlinux.org/index.php/Installation_guide_(简体中文))。

1.  检查主板启动模式：

    ``` console
    root@archiso ~ # ls /sys/firmware/efi/efivars
    ```

    若目录存在，表明主板使用 UEFI 模式启动；若目录不存在，表明主板使用 BIOS 或 CSM 模式启动。

0.  为 Arch ISO 配置网络：

    1.  检查网卡：

        ``` console
        root@archiso ~ # ip link
        ```

    0.  启用 DHCPCD 服务获取网络地址：

        ``` console
        root@archiso ~ # systemctl enable dhcpcd
        ```

    0.  检查网络连接：

        ``` console
        root@archiso ~ # ping archlinux.org
        ```

0.  为 Arch ISO 同步时间：

    1.  检查服务状态：

        ``` console
        root@archiso ~ # timedatectl status
        ```

    0. 启用网络时间同步：

        ``` console
        root@archiso ~ # timedatectl set-ntp true
        ```

0.  硬盘分区、格式化并挂载：

    假定块设备名为 `sda`，大小为 `20GiB`，交换区配置参见 [Chapter 15. Swap Space Red Hat Enterprise Linux 7 | Red Hat Customer Portal](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/storage_administration_guide/ch-swapspace)。

    1.  列出块设备：

        ``` console
        root@archiso ~ # lsblk
        ```

    0.  为块设备分区：

        ``` console
        root@archiso ~ # cfdisk --zero /dev/<sda>
        abbr.          # cfdisk -z /dev/<sda>
        ```

        选用 GPT 分区表：

        | Device        | Size    | Type                  | 说明
        |:------------- |:------- |:--------------------- |:----
        | `/dev/<sda1>` | `1M`    | `BIOS boot`           | 若选用 BIOS 则须此分区
        | `/dev/<sda2>` | `512M`  | `EFI System`          | 若选用 UEFI 则须此分区
        | `/dev/<sda3>` | `17.5G` | `Linux root (x86-64)` | 根目录分区
        | `/dev/<sda4>` | `2G`    | `Linux swap`          | 交换分区

        写入修改，然后退出。

    0.  确认分区：

        ``` console
        root@archiso ~ # lsblk
        ```

    0.  `BIOS boot` 分区无须格式化；

    0.  若存在，格式化 `EFI System` 分区：

        ``` console
        root@archiso ~ # mkfs.vfat /dev/<sda2>
        ```

    0.  格式化根目录分区：

        ``` console
        root@archiso ~ # mkfs.ext4 /dev/<sda3>
        ```

    0.  建立交换分区，交换分区无须格式化：

        ``` console
        root@archiso ~ # mkswap /dev/<sda4>
        root@archiso ~ # swapon /dev/<sda4>
        ```

    0.  检查分区格式：

        ``` console
        root@archiso ~ # lsblk --fs
        ```

    0.  挂载根目录分区：

        ``` console
        root@archiso ~ # mount /dev/<sda3> /mnt
        ```

    0.  若存在，挂载 EFI System 分区：

        ``` console
        root@archiso ~ # mkdir --parents /mnt/boot/EFI
        abbr.          # mkdir -p /mnt/boot/EFI

        root@archiso ~ # mount /dev/<sda2> /mnt/boot/EFI
        ```

    0.  检查分区挂载：

        ``` console
        root@archiso ~ # lsblk
        ```

0.  为 Arch ISO 选择镜像，参见[该文](https://wiki.archlinux.org/title/Installation_guide_(简体中文)#选择镜像)：

    ``` console
    root@archiso ~ # vim /etc/pacman.d/mirrorlist
    ```


0.  安装基本系统：

    ``` console
    root@archiso ~ # pacstrap /mnt linux linux-firmware base base-devel vim
    ```

    | linux | linux-firmware |    base    | base-devel | vim |
    |:-----:|:--------------:|:----------:|:----------:|:---:|
    | 内核  |      固件      | 基础软件包 | 开发软件包 |     |

0.  为新系统配置分区表：

    1.  生成分区表：

        ``` console
        root@archiso ~ # genfstab -U /mnt >> /mnt/etc/fstab
        ```

    0.  检查分区表：

        ``` console
        root@archiso ~ # cat /mnt/etc/fstab
        ```

    0.  切换到新系统：

        ``` console
        root@archiso ~ # arch-chroot /mnt
        ```

0.  为新系统配置时间：

    1.  建立软连接，将时区设置为东八区：

        ``` console
        [root@archiso /]# ln --symbolic --force /usr/share/zoneinfo/<Asia/Chongqing> \
                                                /etc/localtime
        [abbr.         ]# ln -sf /usr/share/zoneinfo/<Asia/Chongqing> \
                                 /etc/localtime
        ```

    0.  设置时间标准为 UTC 并同步：

        ``` console
        [root@archiso /]# hwclock --systohc --utc
        [abbr.         ]# hwclock -wu
        ```

    0.  检查当前时间：

        ``` console
        [root@archiso /]# date
        ```

0.  为新系统配置本地化：

    1.  取消注释，以启用对应的本地化支持：

        ``` console
        [root@archiso /]# vim /etc/locale.gen
        ```

        ``` text
        # en_US.UTF-8 UTF-8
        # zh_CN.UTF-8 UTF-8
        ```

    0.  生成对应本地化支持：

        ``` console
        [root@archiso /]# locale-gen
        ```

    0.  选择本地化配置：

        ``` console
        [root@archiso /]# vim /etc/locale.conf
        ```

        ``` ini
        LANG=en_US.UTF-8
        ```

0.  为新系统配置网络：

    1.  配置主机名：

        ``` console
        [root@archiso /]# vim /etc/hostname
        ```

        ``` text
        Arch
        ```

    0.  配置本地静态域名解析：

        ``` console
        [root@archiso /]# vim /etc/hosts     
        ```

        ``` text
        127.0.0.1       localhost localhost.localdomain localhost4 localhost4.localdomain4
        ::1             localhost localhost.localdomain localhost6 localhost6.localdomain6
        ```

    **选用 `systemd-networkd` 进行网络管理**

    3.  查看网卡：

        ``` console
        [root@archiso /]# ip link
        ```

    0.  为所有未配置的 en* 网卡配置的动态地址，用作保底：

        ``` console
        [root@archiso /]# vim /etc/systemd/network/z-en-dhcp.network
        ```

        ``` ini
        [Match]
        Name=en*

        [Network]
        DHCP=ipv4
        ```

    0.  为特定 `en<name>` 网卡配置静态地址：

        ``` console
        [user@host *]# sudo vim /etc/systemd/network/en<name>.network
        ```

        ``` ini
        [Match]
        Name=en<name>

        [Network]
        Address=192.168.0.1/24
        Gateway=192.168.0.254
        DNS=223.6.6.6
        DNS=8.8.8.8
        ```

    0.  启用 `systemd-networkd` 服务：

        ``` console
        [root@archiso /]# systemctl enable systemd-networkd
        ```

    **选用 `systemd-resolved` 进行域名解析**

    7.  建立软连接，以向旧兼容：

        ``` console
        [root@archiso /]# ln --symbolic --force /run/systemd/resolve/resolv.conf \
                                                /etc/resolv.conf
        [abbr.         ]# ln -sf /run/systemd/resolve/resolv.conf \
                                 /etc/resolv.conf
        ```

    0.  启用 systemd-resolved 服务：

        ``` console
        [root@archiso /]# systemctl enable systemd-resolved
        ```

0.  为新系统安装引导：

    若主板使用 BIOS 模式启动，则：

    1.  安装引导程序：

        ``` cnosole
        [root@archiso /]# pacman --sync grub
        ```

    0.  向块设备装载引导：

        ``` console
        [root@archiso /]# grub-install --recheck /dev/sda
        ```

    0.  生成引导配置：

        ``` console
        [root@archiso /]# grub-mkconfig --output=/boot/grub/grub.cfg
        ```

    若主板使用 UEFI 模式启动，则：

    1.  安装引导程序：

        ``` console
        [root@archiso /]# pacman --sync efibootmgr grub
        ```

    0.  向块设备装载引导：

        ``` console
        [root@archiso /]# grub-install --recheck /dev/sda
        ```

    0.  生成引导配置：

        ``` console
        [root@archiso /]# grub-mkconfig --output=/boot/grub/grub.cfg
        ```

0.  重启，从新系统启动：

    1.  为 root 用户配置密码：

        ``` console
        [root@archiso /]# passwd
        ```

    0.  退出 chroot 环境：

        ``` console
        [root@archiso /]# exit
        ```

    0.  卸载分区，以检查分区是否仍繁忙，避免数据丢失：

        ``` console
        root@archiso ~ # umount --recursive /mnt
        abbr.          # umount -R /mnt
        ```

    0.  硬重启：

        ``` console
        root@archiso ~ # reboot
        ```

<!----------------------------------------------------------------------------->

[Arch]: <https://archlinux.org/> "Arch Linux"
