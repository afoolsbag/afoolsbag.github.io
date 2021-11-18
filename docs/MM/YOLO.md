# YOLO

YOLO 是由 Joseph Redmon 创造的物体识别（Object Detection）算法及其改进算法。

*   [YOLOv5] by Ultralytics，[:material-github: GitHub](https://github.com/ultralytics/yoloV5)；
*   [YOLOv4] by Alexey Bochkovskiy，[:material-github: GitHub][YOLOv4]；
*   [YOLOv3] by Joseph Redmon，[:material-github: GitHub](https://github.com/pjreddie/darknet)；
*   [YOLOv2] by Joseph Redmon；
*   [YOLOv1] by Joseph Redmon。

参见 [一文读懂YOLO V5 与 YOLO V4](https://zhuanlan.zhihu.com/p/161083602)。

## 运行 YOLOv5

???+ example ":material-microsoft-windows: Window10 + CPU"

    1.  下载并安装 [Python](https://www.python.org/)；

        1.  安装完毕后，配置 pypi 镜像源：

            ``` doscon
            %USERPROFILE%> pip config set global.index-url https://pypi.doubanio.com/simple
            ```

        0.  升级 pip：

            ``` doscon
            %USERPROFILE%> python -m pip install -U pip
            ```

    0.  安装 PyTorch CPU 版本：

        ``` doscon
        %USERPROFILE%> pip install torch torchvision torchaudio
        ```

        参见[这个页面](https://pytorch.org/get-started/locally/#start-locally)；

    0.  安装 YOLOv5 依赖：

        ``` doscon
        %USERPROFILE%> pip install -r https://raw.githubusercontent.com/ultralytics/yolov5/master/requirements.txt
        ```

        !!! tip "提示"

            如果所在地区网络受限，无法访问 <https://raw.githubusercontent.com/> 域名，那么可以手动从[这个页面](https://github.com/ultralytics/yolov5/blob/master/requirements.txt)获取该文件，保存在本地再运行：

            ``` doscon
            %USERPROFILE%> pip install -r requirements.txt
            ```

    0.  测试运行：

        ``` python
        import torch

        # Model
        model = torch.hub.load('ultralytics/yolov5', 'yolov5s', pretrained=True)

        # Images
        imgs = ['https://ultralytics.com/images/zidane.jpg']  # batch of images

        # Inference
        results = model(imgs)

        # Results
        results.print()
        results.save()  # or .show()

        results.xyxy[0]  # img1 predictions (tensor)
        results.pandas().xyxy[0]  # img1 predictions (pandas)
        #      xmin    ymin    xmax   ymax  confidence  class    name
        # 0  749.50   43.50  1148.0  704.5    0.874023      0  person
        # 1  433.50  433.50   517.5  714.5    0.687988     27     tie
        # 2  114.75  195.75  1095.0  708.0    0.624512      0  person
        # 3  986.00  304.00  1028.0  420.0    0.286865     27     tie
        ```

        !!! tip "提示"

            如果所在地区网络受限，无法顺利使用 `torch.hub.load` 从 GitHub 加载预训练模型，
            那么可以手动从[这个页面](https://github.com/ultralytics/yolov5/releases)获取源码包（`Source code`），
            解压到本地后，再从上述页面获取预训练模型（`*.pt`）放入解压后的项目文件夹中，并改写命令为从本地加载：

            ``` python
            model = torch.hub.load('path/to/local/yolov5', 'yolov5s', source='local', pretrained=True)
            ```

## 运行 YOLOv4

## 运行 YOLOv3

???+ example ":material-microsoft-windows: Window10 + MSYS2"

    1.  下载并安装 [MSYS2](https://www.msys2.org/)；

        1.  安装完毕后，通过开始菜单或 `msys2` 命令运行 MSYS2；

        0.  首次运行 MSYS2 将自动进行初始配置；

        0.  首次运行 MSYS2 需要手动更新包数据库并升级基础包：

            ``` console
            $ pacman -Syu
            ```

            升级完毕后会话将自行结束；

        0.  再次运行 MSYS2，手动更新其余基础包：

            ``` console
            $ pacman -Su
            ```

            现在 MSYS2 已准备完毕。

    0.  通过 MSYS2 提供 gcc 工具链支持：

        ``` console
        $ pacman -S --needed base-devel msys2-devel
        ```

    0.  下载 [YOLOv3 源码](https://github.com/pjreddie/darknet)；

        !!! attention "注意"

            通过 Zip 压缩包形式获取源码，不要使用 `git clone` 命令。`git clone` 命令会根据操作系统适配文本文件的换行符，这将导致路径解析出问题。

    0.  进入 `darknet` 目录：

        ``` console
        $ cd darknet
        ```

    0.  编译 `darknet`：

        ``` console
        $ make
        ```

    0.  获取预训练权重文件：

        ``` console
        $ wget https://pjreddie.com/media/files/yolov3.weights
        ```

    0.  测试运行：

        ``` console
        $ ./darknet detect cfg/yolov3.cfg yolov3.weights data/dog.jpg
        ```

<!----------------------------------------------------------------------------->

[YOLOv1]: <https://pjreddie.com/darknet/yolov1/> "YOLO: Real-Time Object Detection"
[YOLOv2]: <https://pjreddie.com/darknet/yolov2/> "YOLO: Real-Time Object Detection"
[YOLOv3]: <https://pjreddie.com/darknet/yolo/>   "YOLO: Real-Time Object Detection"
[YOLOv4]: <https://github.com/AlexeyAB/darknet>  "YOLOv4: Neural Networks for Object Detection"
[YOLOv5]: <https://ultralytics.com/yolov5>       "YOLOv5: The friendliest AI architecture you’ll ever use"
