# UML

统一建模语言（UML）是非专利的第三代建模和规约语言。[^Unified Modeling Language on Wikipedia]

## draw.io

[draw.io]。

## PlantUML

[PlantUML]。

## StarUML

[StarUML]。

### 快捷键

[Keyboard Shortcuts - StarUML documentation](https://docs.staruml.io/user-guide/keyboard-shortcuts)。

### 注册码

请到官网购买以支持正版。

??? tldr "asar"

    !!! warning "声明"

        据《中华人民共和国著作权法（2010年2月26日第二次修正版）》第二十二条，下述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。

    1.  从官网下载、安装客户端，并运行一次；

    0.  安装 asar 包：

        ``` doscon
        %USERPROFILE%> npm install --global asar
        ```

    0.  切换到 StarUML 安装目录：

        ``` doscon
        %USERPROFILE%> %PROGRAMFILES%\StarUML\resources
        ```

    0.  备份：

        ``` doscon
        %ALLUSERSPROFILE%> copy app.asar app.asar.bck
        ```

    0.  解包：

        ``` doscon
        %ALLUSERSPROFILE%> asar extract app.asar app
        ```

    0.  修改鉴权代码：

        文件：`app\src\engine\license-manager.js`  
        函数：`checkLicenseValidity ()`  
        修改为：

        ``` js
        checkLicenseValidity () {
          this.validate().then(() => {
            setStatus(this, true)
          }, () => {
            //setStatus(this, false)
            //UnregisteredDialog.showDialog()
            setStatus(this, true)
          })
        }
        ```

    0.  重新打包：

        ``` doscon
        %ALLUSERSPROFILE%> asar pack app app.asar
        ```

    0.  上述行为及其影响仅可用于“为个人学习、研究或者欣赏”，不得用于其他用途。

<!----------------------------------------------------------------------------->

[^Unified Modeling Language on Wikipedia]: [UML Unified Modeling Language - Wikipedia](https://wikipedia.org/wiki/Unified_Modeling_Language).

*[UML]: Unified Modeling Language

[draw.io]:  <https://draw.io/>
[PlantUML]: <https://plantuml.com/>
[StarUML]:  <https://staruml.io/>
