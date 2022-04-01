# GPT-2

[GPT-2] 是一款无监督的变换语言模型。[^GPT-2 on Wikipedia]

## 运行 GPT-2

### 前提条件

*   需要处理器（CPU 或 GPU）具有一定运算能力，因为模型运算需要算力
*   需要能连接外网，因为模型下载需要连接 Google 服务器
*   需要 [Git] 获取代码
*   需要 [Python] 提供运行时

### :material-microsoft-windows: Windows

1.  准备好工作目录并运行命令提示符

    **工作目录**是一个任意选取的文件夹，所有的操作都将在这个文件夹中进行。最好创建一个空文件夹，这样较为独立，不与其他文件混淆。
    譬如在盘符 `D:` 下新建文件夹 `workspace` 作为工作目录。

    **命令提示符**是一个程序，用于在图形用户接口（GUI）中提供命令行接口（CLI）。可以在开始菜单的 `Windows 系统` 下找到命令提示符，或者运行（<kbd>Win + R</kbd>）打开 `cmd` 命令以运行命令提示符。

    注意：在命令提示符中，组合键 ++ctrl+c++ 和 ++ctrl+v++ 另作他用，使用替代的 ++ctrl+insert++ 和 ++shift+insert++ 实现复制和粘贴。

2.  切换到工作目录

    命令提示符中的初始目录通常为用户主目录，形如 `C:\Users\Name>` ，需要将它切换到之前创建的工作目录中：

    ``` doscon
    :: 这是默认的当前目录
    C:\Users\Name>

    :: 使用 D: 命令，切换盘符到 D 盘
    C:\Users\Name> D:

    :: 现在已经切换到了 D 盘
    D:\>

    :: 使用 CD 命令（Change Directory），切换到工作目录
    D:\> CD workspace

    :: 现在已经切换到了工作目录
    D:\workspace>
    ```

3.  获取 GPT-2 源码

    使用 Git 从 GitHub 服务器上拉取 GPT-2 源代码：

    ``` doscon
    :: 这是工作目录
    D:\workspace>

    :: 使用 git clone 命令拉取源代码
    D:\workspace> git clone https://github.com/openai/gpt-2.git

    :: 等待它拉取完成，它将自动创建 gpt-2 文件夹，并将源代码同步到其中
    
    :: 切换到 gpt-2 的项目目录
    D:\workspace> CD gpt-2

    :: 现在已经切换到了项目目录
    D:\workspace\gpt-2>
    ```

4.  安装依赖（二选一）

    项目依赖第三方库，如果计算机拥有高端的图形显示卡（显卡，GPU），那么使用以下命令安装依赖：

    ``` doscon
    D:\workspace\gpt-2> pip install tensorflow-gpu==1.12.0
    D:\workspace\gpt-2> pip install -r requirements.txt
    ```

    否则使用中央处理器（CPU）进行运算：

    ``` doscon
    D:\workspace\gpt-2> pip install tensorflow==1.12.0
    D:\workspace\gpt-2> pip install -r requirements.txt
    ```

5.  下载模型（至少选一）

    使用项目提供的工具下载模型。因为要从 Google 服务器下载，所以需要连接外网，否则会非常慢甚至无法下载：

    ``` doscon
    :: 拥有 1.17 亿参数的模型，大小约 500 MiB，若没有需要，该模型【可以略过】
    D:\workspace\gpt-2> python download_model.py 117M

    :: 拥有 1.24 亿参数的模型，大小约 500 MiB，默认模型，【需要下载】
    D:\workspace\gpt-2> python download_model.py 124M

    :: 拥有 3.45 亿参数的模型，大小约 1.5 GiB，若没有需要，该模型【可以略过】
    D:\workspace\gpt-2> python download_model.py 345M

    :: 拥有 3.55 亿参数的模型，大小约 1.5 GiB，若没有需要，该模型【可以略过】
    D:\workspace\gpt-2> python download_model.py 355M

    :: 拥有 7.74 亿参数的模型，大小约 3 GiB，若没有需要，该模型【可以略过】
    D:\workspace\gpt-2> python download_model.py 774M

    :: 拥有 15.58 亿参数的模型，大小约 6 GiB，若没有需要，该模型【可以略过】
    D:\workspace\gpt-2> python download_model.py 1558M
    ```

    模型参数越多，其效果越好，但模型存储大小和运行时所需运算量也会随之剧增。

## GPT-2 命令

基本用法：

``` doscon
:: 设置 Python 运行时，使其支持 UTF-8 编码：
D:\workspace\gpt-2> SET PYTHONIOENCODING=UTF-8

:: 运行交互式生成器
D:\workspace\gtp-2> python src\interactive_conditional_samples.py

:: 等待其运行，直至出现模型提示符
Model prompt >>>

:: 输入任意文本，模型将运算生成相应的文章
Model prompt >>> ...

:: 若想退出交互式生成器，请按下 Ctrl-C 组合键
```

高级用法：

``` doscon
:: 略
:: 详情查看帮助信息
D:\workspace\gtp-2> python src\interactive_conditional_samples.py -- --help
```

<!----------------------------------------------------------------------------->

[^GPT-2 on Wikipedia]: [OpenAI - Wikipedia § GTP-2](https://wikipedia.org/wiki/OpenAI#GPT-2)

[Git]:    https://git-scm.com/
[GPT-2]:  https://github.com/openai/gpt-2
[Python]: https://www.python.org/

*[GPT-2]: Generative Pre-trained Transformer 2
