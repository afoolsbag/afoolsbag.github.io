# 文件传输协议 FTP

## 服务端
---

### vsftpd

官网 <https://security.appspot.com/vsftpd.html>。

#### CentOS

[*Red Hat 上的 FTP 帮助文档*](https://access.redhat.com/documentation/red_hat_enterprise_linux/7/html/system_administrators_guide/s1-ftp)。

#### Ubuntu

[*Ubuntu 上的 vsftpd 帮助文档*](https://help.ubuntu.com/community/vsftpd)。

```fish
user@host ~> vim /etc/vsftpd.conf
```

## 客户端
---

### lftp

官网 <https://lftp.tech/>

#### CentOS

```fish
user@host ~> lftp [-u <username>[,password]] <host>
```
