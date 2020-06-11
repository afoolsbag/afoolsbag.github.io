# GNU/Linux 发行版 Arch 操作系统

官网 <https://archlinux.org/>。

## 安装
---

[*ArchWiki 上的安装教程*](https://wiki.archlinux.org/index.php/Installation_guide_(简体中文))。

### 检查主板启动模式

```zsh
root@archiso ~ # ls /sys/firmware/efi/efivars
```

若目录存在，表明主板使用 UEFI 模式启动；若目录不存在，表明主板使用 BIOS 或 CSM 模式启动。

### 为 Arch ISO 配置网络

```zsh
# 检查网卡
root@archiso ~ # ip link

# 启用 DHCPCD 服务获取网络地址
root@archiso ~ # systemctl enable dhcpcd

# 检查网络连接
root@archiso ~ # ping archlinux.org
```

### 为 Arch ISO 同步时间

```zsh
# 检查服务状态
root@archiso ~ # timedatectl statutimeds        

# 启用网络时间同步
root@archiso ~ # timedatectl set-ntp true
```

### 硬盘分区、格式化并挂载

[*Red Hat Enterprise Linux 7 对于交换分区的建议*](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/storage_administration_guide/ch-swapspace)。

```zsh
# 列出块设备
root@archiso ~ # lsblk

# 为块设备分区
root@archiso ~ # cfdisk --zero /dev/<sda>               # 假定块设备名为 sda，下同

# Select label type: gpt
# >> Free space ->  [ New   ] -> Partition size: 1M     # 若选用 BIOS 则须此分区
# >> /dev/<sda1> -> [ Type  ] -> BIOS boot
# >> Free space ->  [ New   ] -> Partition size: 512M   # 若选用 UEFI 则须此分区
# >> /dev/<sda2> -> [ Type  ] -> EFI System
# >> Free space ->  [ New   ] -> Partition size: 45.5G  # 根目录分区，假定为 45.5G
# >> /dev/<sda3> -> [ Type  ] -> Linux root (x86-64)
# >> Free space ->  [ New   ] -> Partition size: 4G     # 交换分区，假定为 4G
# >> /dev/<sda4> -> [ Type  ] -> Linux swap
#                   [ Write ] -> Are you sure ..? yes   # 写入修改
#                   [ Quit  ]

# BIOS boot 无须格式化
# -

# 若存在，格式化 EFI System 分区
root@archiso ~ # mkfs.vfat /dev/<sda2>

# 格式化根目录分区
root@archiso ~ # mkfs.ext4 /dev/<sda3>

# 建立交换分区，交换分区无须格式化
root@archiso ~ # mkswap /dev/<sda4>
root@archiso ~ # swapon /dev/<sda4>

# 检查分区格式
root@archiso ~ # lsblk --fs

# 挂载根目录分区
root@archiso ~ # mount /dev/<sda3> /mnt

# 若存在，挂载 EFI System 分区
root@archiso ~ # mkdir --parents /mnt/boot/EFI
root@archiso ~ # mount /dev/<sda2> /mnt/boot/EFI

# 检查分区挂载
root@archiso ~ # lsblk
```

### 为 Arch ISO 选择镜像

```zsh
root@archiso ~ # vim /etc/pacman.d/mirrorlist
```

越靠前的镜像优先级越高，且该配置将被复制到新系统，须正确调整：

```vim
## Alibaba
Server = http://mirrors.aliyun.com/archlinux/$repo/os/$arch
## Tencent
Server = https://mirrors.cloud.tencent.com/archlinux/$repo/os/$arch

......
```

### 安装基本系统

```zsh
root@archiso ~ # pacstrap /mnt linux linux-firmware base base-devel vim
#                              内核
#                                    固件
#                                                   基础软件包
#                                                        开发软件包
#                                                                   编辑器
```

### 为新系统配置分区表

```zsh
# 生成分区表
root@archiso ~ # genfstab -U /mnt >> /mnt/etc/fstab

# 检查分区表
root@archiso ~ # cat /mnt/etc/fstab

# 切换到新系统
root@archiso ~ # arch-chroot /mnt
```

### 为新系统配置时间

```bash
# 建立软连接，将时区设置为东八区
[root@archiso /]# ln --symbolic --force /usr/share/zoneinfo/<Asia/Chongqing> /etc/localtime
# abbr.           ln -sf /usr/share/zoneinfo/<Asia/Chongqing> /etc/localtime

# 设置时间标准为 UTC 并同步
[root@archiso /]# hwclock --systohc --utc

# 检查当前时间
[root@archiso /]# date
```

### 为新系统配置本地化

```bash
# 取消注释，以启用对应的本地化支持
[root@archiso /]# vim /etc/locale.gen
# en_US.UTF-8 UTF-8
# zh_CN.UTF-8 UTF-8

# 生成对应本地化支持
[root@archiso /]# locale-gen

# 选择本地化配置
[root@archiso /]# vim /etc/locale.conf
# LANG=en_US.UTF-8
```

### 为新系统配置网络

```bash
# 配置主机名
[root@archiso /]# vim /etc/hostname
# <zrrsarch>

# 配置本地静态域名解析
[root@archiso /]# vim /etc/hosts     
# 127.0.0.1       localhost
# ::1             localhost
# 127.0.0.1       <zrrsarch>.localdomain  <zrrsarch>
```

选用 systemd-networkd 进行网络管理

```bash
# 查看网卡
[root@archiso /]# ip link

# 为所有未配置的 en* 网卡配置的动态地址，用作保底
[root@archiso /]# vim /etc/systemd/network/z-en-dhcp.network
# [Match]
# Name=en*
#
# [Network]
# DHCP=ipv4

# 为特定 en<name> 网卡配置静态地址
[user@host *] sudo vim /etc/systemd/network/en<name>.network
# [Match]
# Name=en<name>
#
# [Network]
# Address=192.168.0.1/24
# Gateway=192.168.0.254
# DNS=223.6.6.6
# DNS=8.8.8.8

# 启用 systemd-networkd 服务
[root@archiso /]# systemctl enable systemd-networkd
[root@archiso /]# systemctl reload-or-restart systemd-networkd
```

选用 systemd-resolved 进行域名解析

```bash
# 建立软连接，以向旧兼容
[root@archiso /]# ln --symbolic --force /run/systemd/resolve/resolv.conf /etc/resolv.conf
# abbr.           ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf

# 启用 systemd-resolved 服务
[root@archiso /]# systemctl enable systemd-resolved
```

### 为新系统安装引导

若主板使用 BIOS 模式启动，则：

```bash
# 安装引导程序
[root@archiso /]# pacman --sync grub

# 向分区装载引导
[root@archiso /]# grub-install --recheck /dev/sda

# 生成引导配置
[root@archiso /]# grub-mkconfig --output=/boot/grub/grub.cfg
```

若主板使用 UEFI 模式启动，则：

```bash
# 安装引导程序
[root@archiso /]# pacman --sync efibootmgr grub

# 向分区装载引导
[root@archiso /]# grub-install --recheck /dev/sda

# 生成引导配置
[root@archiso /]# grub-mkconfig --output=/boot/grub/grub.cfg
```

### 重启，从新系统启动

```bash
# 为 root 用户配置密码
[root@archiso /]# passwd

# 退出 chroot 环境
[root@archiso /]# exit
```

```zsh
# 卸载分区，以检查分区是否仍繁忙，避免数据丢失
root@archiso / # umount --recursive /mnt
# abbr.        # umount -R /mnt

# 硬重启
root@archiso / # reboot
```
