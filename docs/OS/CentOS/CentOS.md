# GNU/Linux 发行版 CentOS 操作系统

## 常见问题
---

### 语言环境支持

```bash
# 安装语言环境
[user@host *]$ sudo dnf install glibc-locale-source
[user@host *]$ sudo dnf install glibc-langpack-en

# 定义语言环境
[user@host *]$ sudo localedef --inputfile=en_US --charmap=UTF-8 --verbose en_US.UTF-8
# abbr.        sudo localedef -i en_US -f UTF-8 -v en_US.UTF-8

# 安装字体库
[user@host *]$ sudo dnf group install Fonts
```

### 修改壳层语言环境

```bash
# 当前会话语言环境
[user@host *]$ locale

# 列出可用语言环境
[user@host *]$ locale --all-locales
# abbr.        locale -a

# 设置语言环境
[user@host *]$ vim ~/.bash_profile                 
```

```bash
LANG="zh_CN.utf8"
```

```bash
# 重新登陆以重启壳层
[user@host *]$ exit
```

### 修改系统语言环境

```bash
# 当前系统语言环境
[user@host *]$ localectl status

# 列出可用语言环境
[user@host *]$ localectl list-locales

# 设置语言环境
# 强烈建议选用 .utf8 后缀的语言环境
[user@host *]$ sudo localectl set-locale <locale>
```
