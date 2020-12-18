# 虚拟机 VMware

官网 <https://vmware.com/>。

## 安装 VMware Tools
---

前提：

*   虚拟系统拥有虚拟 CD/DVD 驱动设备
*   用户拥有管理员权限

启动虚拟系统，从菜单栏“虚拟机”菜单中，点击“安装 VMware Tools”按钮，使虚拟 CD/DVD 驱动设备装载 VMware Tools 安装盘。

```fish
# 查找 CD/DVD 设备
user@host *> lsblk

# 创建目录并挂载设备
user@host *> sudo mkdir /mnt/cdrom
user@host *> sudo mount /dev/<sr0> /mnt/cdrom

# 解压安装包
user@host *> sudo tar -xavf /mnt/cdrom/VMwareTools-<*> -C /opt/

# 安装依赖
user@host *> sudo yum install perl

# 安装 VMware Tools
user@host *> sudo /opt/vmware-tools-distrib/vmware-install.pl --default
```

## 注册码
---

请到官网购买以支持正版。
