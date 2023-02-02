# 安全壳层协议（Secure Shell Protocol）

安全壳层协议是一种加密的网络传输协议，可在不安全的网络中为网络服务提供安全的传输环境。[^SSH on Wikipedia]
其主流实现为 [OpenSSH]。

## 运行 OpenSSH

=== ":fontawesome-brands-windows: Windows"

    参见 [适用于 Windows 的 OpenSSH](https://docs.microsoft.com/windows-server/administration/openssh/openssh_overview)。

## 使用 OpenSSH

参见 [Set up SSH public key authentication to connect to a remote system](https://kb.iu.edu/d/aews)。

### 生成密钥对

=== ":fontawesome-brands-windows: Windows"

    ``` doscon title="Command Prompt"
    %USERPROFILE%> ssh-keygen [-t rsa]
    ```

    *   公钥：`%USERPROFILE%\.ssh\id_rsa.pub`
    *   私钥：`%USERPROFILE%\.ssh\id_rsa`

=== ":fontawesome-brands-linux: GNU/Linux"

    ``` console title="Bash"
    [user@host *]$ ssh-keygen [-t rsa]
    ```

    *   公钥：`~\.ssh\id_rsa.pub`
    *   私钥：`~\.ssh\id_rsa`

### 在服务端部署公钥

=== ":fontawesome-brands-windows: Windows"

    1.  创建 `.ssh` 目录：

        ``` doscon title="Command Prompt"
        StandardUser *> MKDIR "%USERPROFILE\.ssh"
        ```

    0.  附加公钥信息：

        ``` doscon title="Command Prompt"
        %ANYWHERE%> TYPE "C:\path\to\id_rsa.pub" >> "%USERPROFILE\.ssh\authorized_keys"
        ```

        !!! note "管理员用户"

            对于管理员用户，公钥应附加到 `%PROGRAMDATA%\ssh\administrators_authorized_keys` 文件，
            该文件的 ACL 须配置为仅被管理员和系统访问：

            ``` powershell title="Power Shell"
            PS AdministrativeUser *> icacls "%PROGRAMDATA%\ssh\administrators_authorized_keys" `
                                            /inheritance:r `
                                            /grant "Administrators:F" `
                                            /grant "SYSTEM:F"
            ```

=== ":fontawesome-brands-linux: GNU/Linux"

    1.  创建 `.ssh` 目录：

        ``` console title="Bash"
        [user@host *]$ mkdir --parents ~/.ssh
        [abbr.      ]$ mkdir -p ~/.ssh
        ```

    0.  附加公钥信息：

        ``` console title="Bash"
        [user@host *]$ cat /path/to/id_rsa.pub >> ~/.ssh/authorized_keys
        ```

    ??? hint "修改授权密钥文件位置..."

        ``` config title="/etc/ssh/sshd_config"
        #AuthorizedKeysFile .ssh/authorized_keys .ssh/authorized_keys2
        ```

        参见 [sshd_config(5)](https://man.openbsd.org/sshd_config)。

### 在客户端部署私钥

=== ":fontawesome-brands-windows: Windows"

    *   `%USERPROFILE%\.ssh\config`

=== ":fontawesome-brands-linux: GNU/Linux"

    *   `~/.ssh/config`
    *   `/etc/ssh/ssh_config`

``` title="config"
Host <CustomName>
	HostName       <DomainName/IPAddress>
	User           <UserName>
	IdentityFile   <~\.ssh\id_rsa>
	IdentitiesOnly yes
```

参见 [ssh_config(5)](https://man.openbsd.org/ssh_config)。

### 文件

=== ":fontawesome-brands-windows: Windows"

    !!! cite inline end

        *   <https://github.com/PowerShell/Win32-OpenSSH/wiki>

    ```
    ?
    ```

=== ":fontawesome-brands-linux: GNU/Linux"

    !!! cite inline end

        *   <https://man.openbsd.org/ssh.1#FILES>
        *   <https://man.openbsd.org/ssh_config#FILES>
        *   <https://man.openbsd.org/ssh-add.1#FILES>
        *   <https://man.openbsd.org/ssh-keygen#FILES>
        *   <https://man.openbsd.org/ssh-keyscan#FILES>
        *   <https://man.openbsd.org/sshd.8#FILES>
        *   <https://man.openbsd.org/sshd_config.5#FILES>

    ```
    /
    ├── etc
    │   ├── hosts.equiv                   # -rw-r--r-- root root
    │   ├── moduli                        #            root root
    │   ├── motd                          #            root root
    │   ├── nologin                       # -rw-r--r-- root root
    │   ├── shosts.equiv                  # -rw-r--r-- root root
    │   └── ssh                           #            root root
    │       ├── ssh_host_key              # -rw------- root root
    │       ├── ssh_host_dsa_key          # -rw------- root root
    │       ├── ssh_host_ecdsa_key        # -rw------- root root
    │       ├── ssh_host_ed25519_key      # -rw------- root root
    │       ├── ssh_host_rsa_key          # -rw------- root root
    │       ├── ssh_host_ecdsa_key.pub    # -rw-r--r-- root root
    │       ├── ssh_host_ed25519_key.pub  # -rw-r--r-- root root
    │       ├── ssh_host_rsa_key.pub      # -rw-r--r-- root root
    │       ├── ssh_known_hosts           # -rw-r--r-- root root
    │       ├── sshd_config               # -rw-r--r-- root root
    │       └── sshrc                     # -rw-r--r-- root root
    ├── home
    │   └── ~
    │       ├── .hushlogin                #            user user
    │       ├── .rhosts                   # -rw------- user user
    │       ├── .shosts                   # -rw------- user user
    │       └── .ssh                      # drwx------ user user  # chmod 700 ~/.ssh
    │           ├── authorized_keys       # -rw------- user user  # chmod 600 ~/.ssh/*
    │           ├── config                # -rw------- user user
    │           ├── environment           # -rw------- user user
    │           ├── id_dsa                # -rw------- user user
    │           ├── id_ecdsa              # -rw------- user user
    │           ├── id_ecdsa_sk           # -rw------- user user
    │           ├── id_ed25519            # -rw------- user user
    │           ├── id_ed25519_sk         # -rw------- user user
    │           ├── id_rsa                # -rw------- user user
    │           ├── id_dsa.pub            # -rw------- user user
    │           ├── id_ecdsa.pub          # -rw------- user user
    │           ├── id_ecdsa_sk.pub       # -rw------- user user
    │           ├── id_ed25519.pub        # -rw------- user user
    │           ├── id_ed25519_sk.pub     # -rw------- user user
    │           ├── id_rsa.pub            # -rw------- user user
    │           ├── known_hosts           # -rw------- user user
    │           └── rc                    # -rw------- user user
    └── var
        ├── empty                         # drwxr-xr-x root root
        └── run
            └── sshd.pid                  # -rw-r--r-- root root
    ```

<!----------------------------------------------------------------------------->

[^SSH on Wikipedia]: [Secure Shell - Wikipedia](https://wikipedia.org/wiki/Secure_Shell)

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
