# 图像处理程序 GIMP

官网 <https://www.gimp.org/>。

## 安装
---

### 通过安装包安装

略。

### 通过 Scoop 安装

```ps1
PS $env:USERPROFILE> scoop install gimp
```

## 常用操作
---

### 导出图像

GIMP Documentation 上的[*相关内容*](https://docs.gimp.org/zh_CN/gimp-images-out.html)，及其有效[*中译版*](https://docs.gimp.org/2.2/zh_CN/gimp-images-out.html)。<br/>
图形界面：主界面 → 菜单栏 → 文件（File） → 导出为（Export As）...<br/>
热键：<kbd>Alt</kbd>+<kbd>F</kbd> → <kbd>X</kbd><br/>
快捷键：<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>

常见图像类型：

| MIME 类型    | 压缩支持 | 颜色支持                                                   | 说明 |
|:------------ |:-------- |:---------------------------------------------------------- |:---- |
| `image/bmp`  | 不压缩   | 最深 8 索引色<br/>最深 32 位直接色<br/>支持 α 通道透明色   | Bitmap Image File<br/>位图图像文件
| `image/tiff` | 无损压缩 | 最深 8 位索引色<br/>最深 24 位直接色<br/>支持透明色        | Tagged Image File Format<br/>标签图像文件格式<br/>始于 1986 年
| `image/gif`  | 无损压缩 | 最深 8 位索引色<br/>支持索引透明色                         | Graphics Interchange Format<br/>图像互换格式<br/>始于 1987 年
| `image/jpeg` | 有损压缩 | 最深 24 位直接色                                           | Joint Photographic Experts Group<br/>联合图像专家小组<br/>始于 1992 年
| `image/png`  | 无损压缩 | 最深 8 位索引色<br/>最深 24 位直接色<br/>支持 α 通道透明色 | Portable Network Graphics<br/>便携式网络图形<br/>始于 1996 年
| `image/heif` |          |                                                            | High Efficiency Image File Format<br/>高效图像文件格式<br/>始于 2013 年

常见图像元数据类型：

| 缩写      | 全称                                                | 译名                         | 始于 |
|:--------- |:--------------------------------------------------- |:---------------------------- |:---- |
| Exif      | Exchangeable image file format                      | 可交换图像文件格式           | 1995 |
| XMP       | Extensible Metadata Platform                        | 可扩展元数据平台             | 2001 |
| IPTC Core | International Press Telecommunications Council Core | 国际新闻电信理事会图像元数据 | 2008 |

### 缩放图像

GIMP Documentation 上的[*相关内容*](https://docs.gimp.org/zh_CN/gimp-image-scale.html)，及其有效[*中译版*](https://docs.gimp.org/2.2/zh_CN/gimp-image-scale.html)。<br/>
图形界面：主界面 → 菜单栏 → 图像（Image） → 缩放图像（Scale Image）...<br/>
热键：<kbd>Alt</kbd>+<kbd>I</kbd> → <kbd>S</kbd>
