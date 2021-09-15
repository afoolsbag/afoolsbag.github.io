# FTP

文件传输协议（FTP）是一个用于在计算机网络上在客户端和服务器之间进行文件传输的应用层协议。[^FTP on Wikipedia]

## 运行 FTP 服务器

[vsftpd] 是一款运行在类 Unix 操作系统上的 FTP 服务器。[^vsftdp on Wikipedia]  
[Xlight] 是一款运行在 :material-microsoft-windows: Windows 操作系统上的轻量 FTP 服务器。

??? tldr ":material-centos: CentOS"

    参见 [Chapter 16. File and Print Servers Red Hat Enterprise Linux 7 | Red Hat Customer Portal § FTP](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/system_administrators_guide/ch-file_and_print_servers#s1-FTP)。

??? tldr ":material-ubuntu: Ubuntu"

    ``` console
    [user@host *]$ vim /etc/vsftpd.conf
    ```

    参见 [vsftpd - Community Help Wiki](https://help.ubuntu.com/community/vsftpd)。

## 运行 FTP 客户端

[lftp] 是一款运行在类 Unix 操作系统上的 FTP 命令行界面客户端。[^lftp on Wikipedia]

??? tldr ":material-centos: CentOS"

    ``` console
    [user@host ~]$ lftp [-u <username>[,password]] <host>
    ```

<!----------------------------------------------------------------------------->

[^FTP on Wikipedia]:    [File Transfer Protocol - Wikipedia](https://wikipedia.org/wiki/File_Transfer_Protocol)
[^vsftdp on Wikipedia]: [vsftpd - Wikipedia](https://wikipedia.org/wiki/Vsftpd)
[^lftp on Wikipedia]:   [lftp - Wikipedia](https://wikipedia.org/wiki/Lftp)

[lftp]:   <https://lftp.tech/>
[vsftpd]: <https://security.appspot.com/vsftpd.html>
[Xlight]: <https://xlightftpd.com/>

*[FTP]:    File Transfer Protocol
*[vsftpd]: very secure FTP daemon
