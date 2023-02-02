# GitLab

:material-gitlab: [GitLab] 是一款基于 :material-git: [Git] 的完全集成的软件开发平台。

## `gitlab-*` 命令

### 查看版本

``` console
[user@host ~]$ cat /opt/gitlab/embedded/service/gitlab-rails/VERSION
```

### 配置

``` console
[user@host ~]$ vim /etc/gitlab/gitlab.rb         # 12.1-

[user@host ~]$ gitlab-ctl reconfigure
```

### 备份

``` console
[user@host ~]$ gitlab-backup create              # 12.2+
[user@host ~]$ gitlab-rake gitlab:backup:create  # 12.1-
```

将在 `/var/opt/gitlab/backups` 目录下生成 `[TIMESTAMP]_[VERSION]_gitlab_backup.tar` 备份文件。

参见 [Back up and restore GitLab | GitLab](https://docs.gitlab.com/ee/raketasks/backup_restore.html)。

<!----------------------------------------------------------------------------->

[Git]:    https://git-scm.com/
[GitLab]: https://gitlab.com/
