# Git 分支模型 GitFlow

官网 <https://github.com/nvie/gitflow>。

```txt
feature develop release hotfix master
```

## 初始化 GitFlow

```fish
# 展示分支
user@host */wdir (master)> git branch

# 初始化 GitFlow
user@host */wdir (master)> git flow init
```

## 功能开发

```txt
        develop
        /
       /
      v
feature
      \
       \
        v
        develop
```

```fish
# 开始功能开发
user@host */wdir (develop)> git flow feature start <name>

# 开发功能并提交
# ......

# 完成功能开发
user@host */wdir (feature/name)> git flow feature finish <name> 
```

## 版本发布

```txt
        develop
              \
               \
                v
                release
                /     \
               /       \
              v         v
        develop         master
```

```fish
# 开始版本发布
user@host */wdir (develop)> git flow release start <version>

# 同步版本号、文档、测试等发布相关内容，并提交
# ......

# 完成版本发布
user@host */wdir (release/version)> git flow release finish <version>
```

## 漏洞修复

```txt
                       master
                       /
                      /
                     v
                hotfix
                /    \
               /      \
              v        v
        develop        master
```

```fish
# 开始漏洞修复
user@host */wdir (master)> git flow hotfix start <name>

# 修复漏洞并提交
# ......

# 完成漏洞修复
user@host */wdir (hotfix/name)> git flow hotfix finish <name> 
```
