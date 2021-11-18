# 开发运维

本文尝试对一种敏捷开发框架进行描述，该框架主要借鉴了 Scrum[^Scrum on Wikipedia]。

## 迭代团队

迭代团队的规模应控制在十人以内，由如下角色组成：

*   产品负责人；
*   开发人员若干名；
*   迭代推进者一名。

## 迭代周期

每个迭代周期应控制在两周左右，最长不超过一个月：

*   确立本次迭代目标

*   每日站会

    *   固定时间、固定地点、每日准时召开
    *   

*   本次迭代审查

    向利害相关者展示所做工作，并征求反馈意见。

*   本次迭代回顾

## 生产流

|           | 计划<br>Plan | 编码<br>Code | 构建<br>Build | 测试<br>Test | 发布<br>Release | 部署<br>Deploy | 运营<br>Operate | 监测<br>Monitor |
|:--------- |:------------:|:------------:|:-------------:|:------------:|:---------------:|:--------------:|:---------------:|:---------------:|
| [CVS]     |              | ✓            |
| [SVN]     |              | ✓            |
| [Git]     |              | ✓            |
| [Jenkins] |              |              | ✓             | ✓            | ✓               | ✓              |
| [Docker]  |              |              |               |              |                 | ✓              |
| [Podman]  |              |              |               |              |                 | ✓              |
| [Ansible] |              |              |               |              |                 | ✓              |

参见 [DevOps生命周期，你想知道的全都在这里了！ - InfoQ 写作平台](https://xie.infoq.cn/article/be5164d597d29c9e6ba4180a6)。

## Awesome

[Awesome Sysadmin](https://github.com/n1trux/awesome-sysadmin)

<!----------------------------------------------------------------------------->

[^Scrum on Wikipedia]: [Scrum (software development) - Wikipedia](https://wikipedia.org/wiki/Scrum_(software_development)).

*[CVS]: Concurrent Versions System, 1990-11-19
*[Git]: Git, 2005-04-07
*[SVN]: Subversion, 2000-10-20

[Ansible]:     <https://www.ansible.com/>
[CLion]:       <https://jetbrains.com/clion>
[CVS]:         <https://savannah.nongnu.org/projects/cvs>
[Docker]:      <https://www.docker.com/>
[Git]:         <https://git-scm.com/>
[Jenkins]:     <https://www.jenkins.io/>
[Podman]:      <https://podman.io/>
[Sourcetree]:  <https://www.sourcetreeapp.com/>
[SVN]:         <https://subversion.apache.org/>
[TortoiseGit]: <https://tortoisegit.net/>
[TortoiseSVN]: <https://tortoisesvn.net/>
