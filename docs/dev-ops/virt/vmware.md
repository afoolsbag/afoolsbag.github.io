# VMware

[VMware] 是一款虚拟机软件，隶属于 [Dell] 旗下。

*   [VMware Workstation Pro](https://www.vmware.com/products/workstation-pro.html)
*   [VMware Workstation Player](https://www.vmware.com/products/workstation-player.html)

## 添加 VMware Tools 支持

0.  前提：

    *   虚拟系统拥有虚拟 CD/DVD 驱动设备；
    *   用户拥有管理员权限。

0.  启动虚拟系统；

0.  依次找到或点选：“菜单栏” --> “虚拟机”菜单 --> “安装 VMware Tools”按钮。使虚拟 CD/DVD 驱动设备装载 VMware Tools 安装盘；

0.  查找 CD/DVD 设备

    ``` console title="GNU/Linux Bash Session"
    [sudoer@host *]$ lsblk
    ```

0.  创建目录并挂载设备

    ``` console title="GNU/Linux Bash Session"
    [sudoer@host *]$ sudo mkdir /mnt/cdrom
    [sudoer@host *]$ sudo mount /dev/<sr0> /mnt/cdrom
    ```

0.  解压缩

    ``` console title="GNU/Linux Bash Session"
    [sudoer@host *]$ sudo tar -xavf /mnt/cdrom/VMwareTools-<*> -C /opt/
    ```

0.  安装依赖

    === ":material-arch: Arch"

        ``` console title="Arch Bash Session"
        [sudoer@host *]$ sudo pacman -S perl
        ```

    === ":material-centos: CentOS"

        ``` console  title="CentOS Bash Session"
        [sudoer@host *]$ sudo yum install perl
        ```

0.  安装 VMware Tools

    ``` console title="GNU/Linux Bash Session"
    [sudoer@host *]$ sudo /opt/vmware-tools-distrib/vmware-install.pl --default
    ```

## 注册码

请到官网购买以支持正版。

??? cite "注册码"

    !!! warning "声明"

        据《中华人民共和国著作权法（2010年2月26日第二次修正版）》第二十二条，下述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。

    *   资料收集于互联网，未验证真实性，不保证有效；

    *   VMware Workstation 16 Pro：

        ``` text
        YF390-0HF8P-M81RQ-2DXQE-M2UT6
        ZF71R-DMX85-08DQY-8YMNC-PPHV8
        ZF3R0-FHED2-M80TY-8QYGC-NPKYF
        ```
    
    *   上述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。

<!----------------------------------------------------------------------------->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
