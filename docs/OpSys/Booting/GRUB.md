# GRUB 引导加载程序

## 引导 Ubuntu 操作系统

1.  设置根目录：

    1.  搜索可用根目录：

        ``` doscon title="GRUB"
        grub> ls
        ```

    0.  设置根目录：

        ``` doscon title="GRUB"
        grub> set root=(hd0,gpt0)
        ```

0.  加载 Linux 内核：

    1.  查看根分区：

        ``` doscon title="GRUB"
        grub> cat /etc/fstab
        ```

    0.  加载 Linux 内核：

        ``` doscon title="GRUB"
        grub> linux /boot/vmlinuz root=/dev/sda0
        ```

0.  加载虚拟文件系统：

    ``` doscon title="GRUB"
    grub> initrd /boot/initrd
    ```

0.  引导：

    ``` doscon title="GRUB"
    grub> boot
    ```
