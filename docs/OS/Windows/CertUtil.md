# CertUtil

CertUtil 是命令行程序，作为 :material-microsoft-windows: Windows 证书服务的一部分进行安装。

参见 [certutil | Microsoft Docs](https://docs.microsoft.com/windows-server/administration/windows-commands/certutil)。

## `CertUtil` 命令

### 计算文件散列

``` doscon
%USERPROFILE%> CertUtil -hashfile <InFile> [HashAlgorithm]
```

其中散列算法支持：`MD2`、`MD4`、`MD5`、`SHA1`、`SHA256`、`SHA384`、`SHA512`。参见 `CertUtil -hashfile -?`。
