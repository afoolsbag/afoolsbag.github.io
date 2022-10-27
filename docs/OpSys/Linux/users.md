# 用户

## 常用操作

=== "查询"

    ``` console
    # 输出已登陆用户的用户名
    [sudoer@host *]$ users

    # 输出已登录用户的用户信息
    [sudoer@host *]$ who --heading
    [abbr.        ]$ who -H

    # 输出已登录用户的用户信息，以及他们正在做什么
    [sudoer@host *]$ w
    ```

=== "启用、禁用"

    ``` console
    # 禁止用户登录
    [sudoer@host *]$ sudo usermod --shell /sbin/nologin <username>
    [abbr.        ]$ sudo usermod -s /sbin/nologin <username>

    # 允许用户登录
    [sudoer@host *]$ sudo usermod --shell /bin/bash <username>
    [abbr.        ]$ sudo usermod -s /bin/bash <username>

    # 以重置密码为 ! 的方式，禁止用户登录
    [sudoer@host *]$ sudo usermod --password ! <username>
    [abbr.        ]$ sudo usermod -p ! <username>
    ```

=== "新建、删除"

    ``` console
    # 新建用户[，并创建用户主目录]
    [sudoer@host *]$ sudo useradd [--create-home] --shell /bin/bash <username>
    [abbr.        ]$ sudo useradd [-m] -s /bin/bash <username>

    # 交互式修改用户密码
    [sudoer@host *]$ sudo passwd <username>

    # 为用户赋予 `sudo` 权限
    [sudoer@host *]$ echo '<username> ALL=(ALL) NOPASSWD:ALL' | sudo tee /etc/sudoers.d/<username>

    # 删除用户[，并移除用户主目录]
    [sudoer@host *]$ userdel [--remove] <username>
    [abbr.        ]$ userdel [-r] <username>

    # 新建后门用户
    [sudoer@host *]$ sudo useradd --home-dir /dev/null --gid root --no-log-init --no-create-home --shell /bin/bash <username>
    [abbr.        ]$ sudo useradd -d /dev/null -g root -l -M -s /bin/bash <username>
    [sudoer@host *]$ sudo passwd <username>
    ```

## 相关文件格式

### `/etc/passwd`

用户账号相关文件，每个用户一行，每行由冒号（`:`）分隔为七个部分：

```passwd
username:x:uid:gid:info:/path/to/home:/path/to/shell
|______/ | |_/ |_/ |__/ |___________/ |____________/
|        | |   |   |    |             登录壳层
|        | |   |   |    |             设置为 /sbin/nologin 可在用户尝试登录时，
|        | |   |   |    |             友善地提醒该账户不允许登录
|        | |   |   |    登录目录
|        | |   |   用户信息
|        | |   组 ID
|        | 用户 ID
|        密码
|        x 表示密码存储在 /etc/shadow 中
用户名
```

### `/etc/shadow`

用户密码相关文件，每个用户一行，每行由冒号（`:`）分隔为九个部分：

```shadow
username:$1$salt$b305cadbb3bce54f3aa59c64fec00dea:18506:0:99999:7:7:36525:
|______/ |/|___/|_______________________________/ |___/ | |___/ | | |     |
|        | |    |                                 |     | |     | | |     保留
|        | |    |                                 |     | |     | | 账户过期日期
|        | |    |                                 |     | |     | 过期后多少天禁用
|        | |    |                                 |     | |     过期前多少天提醒
|        | |    |                                 |     | 密码修改后的有效天数
|        | |    |                                 |     修改密码最短间隔天数
|        | |    |                                 密码的最后修改日期
|        | |    $密码散列值
|        | $盐
|        $加密格式：
|        $1 为 MD5
|        $2 为 Blowfish
|        $5 为 SHA-256
|        $6 位 SHA-512
|        |______________________________________/
|        密码：
|        若为 * 表示该账户为被锁定的服务账户
|        若为 ! 表示该账户为被锁定的用户账户
用户名
```

其中的日期值为距 1970-01-01 的天数。
