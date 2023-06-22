# systemd 系统和服务管理器

[systemd]

## 创建服务

1.  创建服务用户（以 `the-service` 为例）

    ``` console
    [sudoer@host *]$ sudo useradd --comment 'The Service' \
                                  --home-dir /opt/the-service \
                                  --no-create-home \
                                  --password !! \
                                  --shell /sbin/nologin \
                                  the-service
    ```

0.  切换所在目录的所有权

    ``` console
    [sudoer@host *]$ sudo chown --recursive \
                                the-service:the-service \
                                /opt/the-service
    ```

0.  创建服务单元，参见 [systemd.service 中文手册](http://www.jinbuguo.com/systemd/systemd.service.html)

    ``` console
    [sudoer@host *]$ sudo vim /etc/systemd/system/the-service.service
    ```

    ``` ini
    [Unit]
    Description=The Service
    After=syslog.target network.target

    [Service]
    Type=simple

    User=the-service
    Group=the-service

    ExecStart=/opt/the-service/the-service

    [Install]
    WantedBy=multi-user.target
    ```

0.  重新加载服务单元

    ``` console
    [sudoer@host *]$ sudo systemctl daemon-reload
    ```

0.  立即启用服务

    ``` console
    [sudoer@host *]$ sudo systemctl enable --now the-service
    ```

<!----------------------------------------------------------------------------->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
