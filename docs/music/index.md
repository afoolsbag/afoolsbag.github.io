# 音乐

!!! cite inline end

    *   [每个人都应该了解的音乐理论](https://zhuanlan.zhihu.com/p/74547235)

[TOC]

## 声音

声音（Sound）
:   声音是振动产生的声波，通过介质（气体、固体、液体）传播并能被人或动物听觉器官所感知的波动现象。[^声音 on Wikipedia]

声波（Acoustic Waves）
:   声波是一种在介质中通过绝热增压和减压的方式传播的能量。[^声波 on Wikipedia]

频率（Frequency）
:   声波的频率是波列中质点在单位时间内振动的次数，通常用字母 $f$ 表示，单位为赫兹（Hz）。

    人耳可以感知的声音的频率在 20 Hz 到 20,000 Hz 之间。

波长（Wavelength）
:   声波的波长是波在一个振动周期内传播的距离，通常用字母 $λ$ 表示。

声压（Sound Pressure）
:   声压是指声波通过媒质时，由振动所产生的压力改变量。[^声压 on Wikipedia]

声压级（Sound Pressure Level）
:   声压级是相对于一个基准值，以对数尺衡量的声压：

    $$
    L_p
    = \ln \left( \frac{p}{p_0} \right) ~\text{Np}
    = 2 \log_{10} \left( \frac{p}{p_0} \right) ~\text{B}
    = 20 \log_{10} \left( \frac{p}{p_0} \right) ~\text{dB}
    $$

    其中 $p$ 为声压的均方根；$p_0$ 为参考声压，ANSI/ASA S1.1-2013 定义空气中 $p_0 = 20 \text{μPa}$，水中 $p_0 = 1 \text{μPa}$。

## 发音体

基音（Fundamental Tone）和泛音（Overtone）
:   一般的声音都是由发音体发出的一系列频率、振幅各不相同的振动复合而成的。这些振动中有一个频率最低的振动，由它发出的音就是基音，其余为泛音。

分音列（Harmonic Series）
:   在管弦乐器的弦和空气柱中，会因反射造成波长相同、行进方向相反的波，这些波互相干涉产生波长、频率不同的谐波，依驻波原理，这些谐波的频率是基频的整数倍。

    同时发声体的物理特性也会改变原先谐波的频率，造成偏差音，但这种改变在听觉上的影响甚小，一般可以忽略。

|       | 基音  |    一次泛音    |    二次泛音    |    三次泛音    |    四次泛音    |    五次泛音    |    六次泛音    |  ...  |
| :---: | :---: | :------------: | :------------: | :------------: | :------------: | :------------: | :------------: | :---: |
| 波长  |  $λ$  | $\frac{1}{2}λ$ | $\frac{1}{3}λ$ | $\frac{1}{4}λ$ | $\frac{1}{5}λ$ | $\frac{1}{6}λ$ | $\frac{1}{7}λ$ |  ...  |
| 频率  |  $f$  |      $2f$      |      $3f$      |      $4f$      |      $5f$      |      $6f$      |      $7f$      |  ...  |

乐音（Musical Tone）
:   发音物体有规律地振动而产生的具有固定音高的音称乐音。

协和（Consonance）
:   在音乐中，协和与不协和是对同时或连续的声音进行的一种分类。[^Consonance and dissonance on Wikipedia]

    据[不同强度的谐波组成的复合音的协和度研究](https://zhuanlan.zhihu.com/p/113688544)，乐音频比协和度局部最优的有：
    c（$1:1$）、c'（$1:2$）、g（$2:3$）、a（$3:5$）、f（$3:4$）、e♭（$5:6$） 以及 e（$4:5$）等。

## 音律

### 三分损益法 [^三分损益法 on Wikipedia]

!!! cite inline end

    > ……九九八十一以为宫。三分去一，五十四以为徵。三分益一，七十二以为商。三分去一，四十八以为羽。三分益一，六十四以为角。……
    >
    > ——[《史记·卷二十五·律书·第三》](https://zh.wikisource.org/wiki/史记/卷025)

按乐音频比 $2:3$ 和 $3:4$ 制定各音。

| 序号  |    五音     |       竹管       |                  |       音高       |             |
| :---: | :---------: | :--------------: | :--------------: | :--------------: | :---------: |
|   1   | 宫（Gōng）  |                  |       $1λ$       |       $1f$       | $1.000000f$ |
|   2   |  徵（Zhǐ）  | $\frac{2}{3}$ 宫 |  $\frac{2}{3}λ$  |  $\frac{3}{2}f$  | $1.500000f$ |
|   3   | 商（Shāng） | $\frac{4}{3}$ 徵 |  $\frac{8}{9}λ$  |  $\frac{9}{8}f$  | $1.125000f$ |
|   4   |  羽（Yǔ）   | $\frac{2}{3}$ 商 | $\frac{16}{27}λ$ | $\frac{27}{16}f$ | $1.687500f$ |
|   5   |  角（Jué）  | $\frac{4}{3}$ 羽 | $\frac{64}{81}λ$ | $\frac{81}{64}f$ | $1.265625f$ |

| 序号  |       十二律        |        竹管        |                          |           音高           |             | 五音  |
| :---: | :-----------------: | :----------------: | :----------------------: | :----------------------: | :---------: | :---: |
|  01   | 黄钟（Huáng Zhōng） |                    |           $1λ$           |           $1f$           | $1.000000f$ |  宫   |
|  02   |  林钟（Lín Zhōng）  | $\frac{2}{3}$ 黄钟 |      $\frac{2}{3}λ$      |      $\frac{3}{2}f$      | $1.500000f$ |  徵   |
|  03   |   太簇（Tài Cù）    | $\frac{4}{3}$ 林钟 |      $\frac{8}{9}λ$      |      $\frac{9}{8}f$      | $1.125000f$ |  商   |
|  04   |   南吕（Nán Lǚ）    | $\frac{2}{3}$ 太簇 |     $\frac{16}{27}λ$     |     $\frac{27}{16}f$     | $1.687500f$ |  羽   |
|  05   |   姑洗（Gū Xiǎn）   | $\frac{4}{3}$ 南吕 |     $\frac{64}{81}λ$     |     $\frac{81}{64}f$     | $1.265625f$ |  角   |
|  06   | 应钟（Yìng Zhōng）  | $\frac{2}{3}$ 姑冼 |    $\frac{128}{243}λ$    |    $\frac{243}{128}f$    | $1.898438f$ |       |
|  07   |   蕤宾（Ruí Bīn）   | $\frac{4}{3}$ 应钟 |    $\frac{512}{729}λ$    |    $\frac{729}{512}f$    | $1.423828f$ |       |
|  08   |    大吕（Dà Lǚ）    | $\frac{4}{3}$ 蕤宾 |   $\frac{2048}{2187}λ$   |   $\frac{2187}{2048}f$   | $1.067871f$ |       |
|  09   |    夷则（Yí Zé）    | $\frac{2}{3}$ 大吕 |   $\frac{4096}{6561}λ$   |   $\frac{6561}{4096}f$   | $1.601807f$ |       |
|  10   |  夹钟（Jiá Zhōng）  | $\frac{4}{3}$ 夷则 |  $\frac{16384}{19683}λ$  |  $\frac{19683}{16384}f$  | $1.201355f$ |       |
|  11   |    无射（Wú Yì）    | $\frac{2}{3}$ 夹钟 |  $\frac{32768}{59049}λ$  |  $\frac{59049}{32768}f$  | $1.802032f$ |       |
|  12   |  仲吕（Zhòng Lǚ）   | $\frac{4}{3}$ 无射 | $\frac{131072}{177147}λ$ | $\frac{177147}{131072}f$ | $1.351524f$ |       |
|  13   |       清黄钟        | $\frac{2}{3}$ 仲吕 | $\frac{262144}{531441}λ$ | $\frac{531441}{262144}f$ | $2.027287f$ |       |

### 五度相生律 [^五度相生律 on Wikipedia]

按乐音频比 $2:3$ 和 $1:2$ 制定各音。

| 序号  |                     音高                      |             |  音名  |      首调唱名      |
| :---: | :-------------------------------------------: | :---------: | :----: | :----------------: |
|  01   |  $(\frac{3}{2})^{6}f$ --> $\frac{729}{512}f$  | $1.423828f$ |   G♯   |      Si /siː/      |
|  02   |   $(\frac{3}{2})^5f$ --> $\frac{243}{128}f$   | $1.898437f$ | D♭、C♯ | Ra /ɹɑː/、Di /diː/ |
|  03   |    $(\frac{3}{2})^4f$ --> $\frac{81}{64}f$    | $1.265625f$ | G♭、F♯ | Se /seɪ/、Fi /fiː/ |
|  04   |    $(\frac{3}{2})^3f$ --> $\frac{27}{16}f$    | $1.687500f$ |   B    |      Ti /tiː/      |
|  05   |     $(\frac{3}{2})^2f$ --> $\frac{9}{8}f$     | $1.125000f$ |   E    |      Mi /miː/      |
|  06   |     $(\frac{3}{2})^1f$ --> $\frac{3}{2}f$     | $1.500000f$ |   A    |      La /lɑː/      |
|  07   |          $(\frac{3}{2})^0f$ --> $f$           | $1.000000f$ |   D    |      Re /ɹeɪ/      |
|  08   |   $(\frac{3}{2})^{-1}f$ --> $\frac{4}{3}f$    | $1.333333f$ |   G    |     Sol /soʊ/      |
|  09   |   $(\frac{3}{2})^{-2}f$ --> $\frac{16}{9}f$   | $1.777777f$ |   C    |      Do /doʊ/      |
|  10   |  $(\frac{3}{2})^{-3}f$ --> $\frac{32}{27}f$   | $1.185185f$ |   F    |      Fa /fɑː/      |
|  11   |  $(\frac{3}{2})^{-4}f$ --> $\frac{128}{81}f$  | $1.580246f$ | B♭、A♯ | Te /teɪ/、Li /liː/ |
|  12   | $(\frac{3}{2})^{-5}f$ --> $\frac{256}{243}f$  | $1.053497f$ | E♭、D♯ | Me /meɪ/、Ri /ɹiː/ |
|  13   | $(\frac{3}{2})^{-6}f$ --> $\frac{1024}{729}f$ | $1.404663f$ |   A♭   |      Le /leɪ/      |

### 纯律

按乐音频比 $2:3$、$4:5$ 和 $1:2$ 制定各音，有多种选音组合。

|                      |         $(\frac{3}{2})^{-2}$          |         $(\frac{3}{2})^{-1}$         |         $(\frac{3}{2})^0$         |         $(\frac{3}{2})^1$         |           $(\frac{3}{2})^2$           |
| :------------------: | :-----------------------------------: | :----------------------------------: | :-------------------------------: | :-------------------------------: | :-----------------------------------: |
|  $(\frac{5}{4})^1$   |  $\frac{5}{9}f$ --> $\frac{10}{9}f$   |            $\frac{5}{3}f$            |          $\frac{5}{4}f$           |          $\frac{15}{8}f$          | $\frac{45}{16}f$ --> $\frac{45}{32}f$ |
|                      |                   D                   |                  A                   |                 E                 |                 B                 |                  F♯                   |
|  $(\frac{5}{4})^0$   |  $\frac{4}{9}f$ --> $\frac{16}{9}f$   |  $\frac{2}{3}f$ --> $\frac{4}{3}f$   |                $f$                |          $\frac{3}{2}f$           |   $\frac{9}{4}f$ --> $\frac{9}{8}f$   |
|                      |                B♭、A♯                 |                  F                   |                 C                 |                 G                 |                   D                   |
| $(\frac{5}{4})^{-1}$ | $\frac{16}{45}f$ --> $\frac{64}{45}f$ | $\frac{8}{15}f$ --> $\frac{16}{15}f$ | $\frac{4}{5}f$ --> $\frac{8}{5}f$ | $\frac{3}{5}f$ --> $\frac{6}{5}f$ |            $\frac{9}{5}f$             |
|                      |                  G♭                   |                D♭、C♯                |              A♭、G♯               |              E♭、D♯               |                B♭、A♯                 |

|      首调唱名      |  音名  |       音高       |             |
| :----------------: | :----: | :--------------: | :---------: |
|      Ti /tiː/      |   B    | $\frac{15}{8}f$  | $1.875000f$ |
| Te /teɪ/、Li /liː/ | B♭、A♯ |  $\frac{9}{5}f$  | $1.800000f$ |
|      La /lɑː/      |   A    |  $\frac{5}{3}f$  | $1.666666f$ |
| Le /leɪ/、Si /siː/ | A♭、G♯ |  $\frac{8}{5}f$  | $1.600000f$ |
|     Sol /soʊ/      |   G    |  $\frac{3}{2}f$  | $1.500000f$ |
| Se /seɪ/、Fi /fiː/ | G♭、F♯ | $\frac{45}{32}f$ | $1.406250f$ |
|      Fa /fɑː/      |   F    |  $\frac{4}{3}f$  | $1.333333f$ |
|      Mi /miː/      |   E    |  $\frac{5}{4}f$  | $1.250000f$ |
| Me /meɪ/、Ri /ɹiː/ | E♭、D♯ |  $\frac{6}{5}f$  | $1.200000f$ |
|      Re /ɹeɪ/      |   D    |  $\frac{9}{8}f$  | $1.125000f$ |
| Ra /ɹɑː/、Di /diː/ | D♭、C♯ | $\frac{16}{15}f$ | $1.066666f$ |
|      Do /doʊ/      |   C    |       $f$        | $1.000000f$ |

### 十二平均律 [^十二平均律 on Wikipedia]

按单一乐音频比拟合五度相生律。

| 十二平均律 |         竹管          |                 |         音高         |                 |
| :--------: | :-------------------: | :-------------: | :------------------: | :-------------: |
|   半应钟   | $2^{-\frac{23}{12}}λ$ |   $0.264866λ$   | $2^{\frac{23}{12}}λ$ |   $3.775497f$   |
|     ……     |                       |                 |                      |                 |
|   半黄钟   |    $\frac{1}{2}λ$     |   $0.500000λ$   |         $2f$         |   $2.000000f$   |
|   正应钟   | $2^{-\frac{11}{12}}λ$ |   $0.529732λ$   | $2^{\frac{11}{12}}λ$ |   $1.887749f$   |
|   正无射   | $2^{-\frac{10}{12}}λ$ |   $0.561231λ$   | $2^{\frac{10}{12}}λ$ |   $1.781797f$   |
|   正南吕   | $2^{-\frac{9}{12}}λ$  |   $0.594604λ$   | $2^{\frac{9}{12}}λ$  |   $1.681793f$   |
|   正夷则   | $2^{-\frac{8}{12}}λ$  |   $0.629961λ$   | $2^{\frac{8}{12}}λ$  |   $1.587401f$   |
|   正林钟   | $2^{-\frac{7}{12}}λ$  |   $0.667420λ$   | $2^{\frac{7}{12}}λ$  |   $1.498307f$   |
|   正蕤宾   | $2^{-\frac{6}{12}}λ$  |   $0.707107λ$   | $2^{\frac{6}{12}}λ$  |   $1.414214f$   |
|   正仲吕   | $2^{-\frac{5}{12}}λ$  |   $0.749154λ$   | $2^{\frac{5}{12}}λ$  |   $1.334840f$   |
|   正姑洗   | $2^{-\frac{4}{12}}λ$  |   $0.793701λ$   | $2^{\frac{4}{12}}λ$  |   $1.259921f$   |
|   正夹钟   | $2^{-\frac{3}{12}}λ$  |   $0.840896λ$   | $2^{\frac{3}{12}}λ$  |   $1.189207f$   |
|   正太簇   | $2^{-\frac{2}{12}}λ$  |   $0.890899λ$   | $2^{\frac{2}{12}}λ$  |   $1.122462f$   |
|   正大吕   | $2^{-\frac{1}{12}}λ$  |   $0.943874λ$   | $2^{\frac{1}{12}}λ$  |   $1.059463f$   |
| **正黄钟** |       **$1λ$**        | **$1.000000λ$** |       **$1f$**       | **$1.000000f$** |
|   倍应钟   |  $2^{\frac{1}{12}}λ$  |   $1.059463λ$   | $2^{-\frac{1}{12}}f$ |   $0.943874f$   |
|     ……     |                       |                 |                      |                 |
|   倍黄钟   |         $2λ$          |   $2.000000λ$   |    $\frac{1}{2}f$    |   $0.500000f$   |

### 标准音高表

采用标准音高[^标准音高]、十二平均律和科学音高记号法[^科学音高记号法 on Wikipedia]列出的，涵盖 MIDI 音符范围和人耳可感知范围的乐音音高：

|  固定唱名  |  音名  |    -1    |    0     |    1     |    2     |    3     |      4       |    5     |    6     |    7     |    8     |    9     |    10    |
| :--------: | :----: | :------: | :------: | :------: | :------: | :------: | :----------: | :------: | :------: | :------: | :------: | :------: | :------: |
|  Si /siː/  |   B    | 15.43385 | 30.86771 | 61.73541 | 123.4708 | 246.9417 |   493.8833   | 987.7666 | 1975.533 | 3951.066 | 7902.133 | 15804.27 | 31608.53 |
|  Si♭、La♯  | B♭、A♯ | 14.56762 | 29.13524 | 58.27047 | 116.5409 | 233.0819 |   466.1638   | 932.3275 | 1864.655 | 3729.310 | 7458.620 | 14917.24 | 29834.48 |
|  La /lɑː/  |   A    | 13.75000 | 27.50000 | 55.00000 | 110.0000 | 220.0000 | **440.0000** | 880.0000 | 1760.000 | 3520.000 | 7040.000 | 14080.00 | 28160.00 |
| La♭、Sol♯  | A♭、G♯ | 12.97827 | 25.95654 | 51.91309 | 103.8262 | 207.6523 |   415.3047   | 830.6094 | 1661.219 | 3322.438 | 6644.875 | 13289.75 | 26579.50 |
| Sol /soʊl/ |   G    | 12.24986 | 24.49971 | 48.99943 | 97.99886 | 195.9977 |   391.9954   | 783.9909 | 1567.982 | 3135.963 | 6271.927 | 12543.85 | 25087.71 |
| Sol♭、Fa♯  | G♭、F♯ | 11.56233 | 23.12465 | 46.24930 | 92.49861 | 184.9972 |   369.9944   | 739.9888 | 1479.978 | 2959.955 | 5919.911 | 11839.82 | 23679.64 |
|  Fa /fɑː/  |   F    | 10.91338 | 21.82676 | 43.65353 | 87.30706 | 174.6141 |   349.2282   | 698.4565 | 1396.913 | 2793.826 | 5587.652 | 11175.30 | 22350.61 |
|  Mi /miː/  |   E    | 10.30086 | 20.60172 | 41.20344 | 82.40689 | 164.8138 |   329.6276   | 659.2551 | 1318.510 | 2637.020 | 5274.041 | 10548.08 | 21096.16 |
|  Mi♭、Re♯  | E♭、D♯ | 9.722718 | 19.44544 | 38.89087 | 77.78175 | 155.5635 |   311.1270   | 622.2540 | 1244.508 | 2489.016 | 4978.032 | 9956.063 | 19912.13 |
|  Re /ɹeɪ/  |   D    | 9.177024 | 18.35405 | 36.70810 | 73.41619 | 146.8324 |   293.6648   | 587.3295 | 1174.659 | 2349.318 | 4698.636 | 9397.273 | 18794.55 |
|  Re♭、Do♯  | D♭、C♯ | 8.661957 | 17.32391 | 34.64783 | 69.29566 | 138.5913 |   277.1826   | 554.3653 | 1108.731 | 2217.461 | 4434.922 | 8869.844 | 17739.69 |
|  Do /doʊ/  |   C    | 8.175799 | 16.35160 | 32.70320 | 65.40639 | 130.8128 |   261.6256   | 523.2511 | 1046.502 | 2093.005 | 4186.009 | 8372.018 | 16744.04 |

## 速度

??? "速度表"

    !!! cite inline end

        *   意大利语：[Tempo (musica)](https://it.wikipedia.org/wiki/Tempo_(musica))
        *   英语：[Tempo](https://en.wikipedia.org/wiki/Tempo)
        *   中文：[速度 (音乐)](https://zh.wikipedia.org/wiki/速度_(音乐))

    | 意大利语         | 中文       |  BPM(it)  |      BPM(en)      |  BPM(zh)  |
    | :--------------- | :--------- | :-------: | :---------------: | :-------: |
    | Prestissimo      | 最急板     |   > 177   |      >= 200       | 200 - 208 |
    | Presto           | 急板       | 100 - 208 |     186 - 200     | 168 - 200 |
    | Allegro vivace   |            |           |     172 - 176     |           |
    | Allegrissimo     | 快而活跃的 | 150 - 167 |     172 - 176     |           |
    | Vivacissimamente |            |           |     172 - 176     |           |
    | Vivacissimo      |            | 140 - 150 |     172 - 176     |           |
    | Vivo             |            |           |                   |           |
    | Vivace           | 活泼的     | 126 - 144 |     156 - 176     |   ~140    |
    | Molto Allegro    |            |           |     124 - 156     |           |
    | Allegramente     |            | 84 - 168  |                   |           |
    | Allegro          | 快板       | 84 - 168  |     120 - 156     | 120 - 168 |
    | Allegro moderato | 中速的快板 | 112 - 124 |     116 - 120     |           |
    | Allegretto       | 小快板     | 98 - 109  |     112 - 120     | 104 - 112 |
    | Veloce           |            |           |                   |           |
    | Rapido           |            |           |                   |           |
    | Moderato         | 中板       |  66 - 68  |     108 - 120     | 90 - 115  |
    | Marcia moderato  |            |  83 - 85  |      83 - 85      |           |
    | Mosso            |            |           |                   |           |
    | Con moto         |            |           |                   |           |
    | Andantino        | 小行板     |  66 - 83  |     80 - 108      |           |
    | Andante          | 行板       | 56 - 108  |     76 - 108      | 76 - 108  |
    | Andante moderato |            |  69 - 72  |     92 - 112      |           |
    | Adagietto        | 小慢板     |  65 - 80  | 72 - 76 / 70 - 80 |           |
    | Adagio           | 慢板       |  48 - 97  |      66 - 76      |  66 - 76  |
    | Sostenuto        |            |           |                   |           |
    | Tenuto           |            |           |                   |           |
    | Larghetto        | 小广板     |  50 - 66  |      60 - 66      |  60 - 66  |
    | Lentamente       |            |  40 - 48  |                   |           |
    | Largamente       |            |  40 - 48  |                   |           |
    | Lento            | 缓板       |  40 - 48  |      45 - 60      |  60 - 60  |
    | Largo            | 广板       |  40 - 48  |      40 - 60      |           |
    | Grave            | 庄严的     |   <= 44   |      25 - 45      |           |
    | Lentissimo       | 甚缓       |    ~40    |                   |           |
    | Adagissimo       |            |           |      24 - 40      |           |
    | Larghissimo      | 极端地缓慢 |   <= 40   |       <= 24       |   <= 40   |

## ABC 记谱法

[The abc standard](https://abcnotation.com/wiki/abc:standard)

???+ "概览"

    === "乐谱"

        ``` abc
        % ABC 乐曲

        %
        % [乐曲头](https://abcnotation.com/wiki/abc:standard:v2.1#information_fields)
        %
        X:1                     % 参考编号 [X:reference number](https://abcnotation.com/wiki/abc:standard:v2.1#xreference_number)
        T:The Title             % 乐曲标题 [T:tune title](https://abcnotation.com/wiki/abc:standard:v2.1#ttune_title)
        T:An Alternative Title  % 第二标题（，以及更多标题）
        C:The Composer          % 作曲家 [C:composer](https://abcnotation.com/wiki/abc:standard:v2.1#ccomposer)
        R:The Rhythm            % 节奏 [R:rhythm](https://abcnotation.com/wiki/abc:standard:v2.1#rrhythm)
        Q:"Presto" 1/4=186      % 速度 [Q:tempo](https://abcnotation.com/wiki/abc:standard:v2.1#qtempo)
        M:4/4                   % 拍号 [M:meter](https://abcnotation.com/wiki/abc:standard:v2.1#mmeter)
        K:G                     % 调号 [K:key](https://abcnotation.com/wiki/abc:standard:v2.1#kkey)
        %
        % [乐曲体](https://abcnotation.com/wiki/abc:standard:v2.1#the_tune_body)
        %
          G, A, B, C  D  E  F  G  A  B  c  d  e  f  g  a  b  c' d'
        w:G, A, B, C  D  E  F  G  A  B  c  d  e  f  g  a  b  c' d'
        ```

    === "ABC 记谱法"

        ``` text
        % ABC 乐曲

        %
        % [乐曲头](https://abcnotation.com/wiki/abc:standard:v2.1#information_fields)
        %
        X:1                     % 参考编号 [X:reference number](https://abcnotation.com/wiki/abc:standard:v2.1#xreference_number)
        T:The Title             % 乐曲标题 [T:tune title](https://abcnotation.com/wiki/abc:standard:v2.1#ttune_title)
        T:An Alternative Title  % 第二标题（，以及更多标题）
        C:The Composer          % 作曲家 [C:composer](https://abcnotation.com/wiki/abc:standard:v2.1#ccomposer)
        R:The Rhythm            % 节奏 [R:rhythm](https://abcnotation.com/wiki/abc:standard:v2.1#rrhythm)
        Q:"Presto" 1/4=186      % 速度 [Q:tempo](https://abcnotation.com/wiki/abc:standard:v2.1#qtempo)
        M:4/4                   % 拍号 [M:meter](https://abcnotation.com/wiki/abc:standard:v2.1#mmeter)
        K:G                     % 调号 [K:key](https://abcnotation.com/wiki/abc:standard:v2.1#kkey)
        %
        % [乐曲体](https://abcnotation.com/wiki/abc:standard:v2.1#the_tune_body)
        %
          G, A, B, C  D  E  F  G  A  B  c  d  e  f  g  a  b  c' d'
        w:G, A, B, C  D  E  F  G  A  B  c  d  e  f  g  a  b  c' d'
        ```

??? "谱号和移调"

    !!! cite inline end

        [4.6 Clefs and transposition](https://abcnotation.com/wiki/abc:standard:v2.1#clefs_and_transposition)

    === "高音谱号"

        ``` abc
        T:高音谱号
        T:G 谱号
        K:treble
          G  | C  D  E  F  G  A  B
        w:G₄ | C₄ D₄ E₄ F₄ G₄ A₄ B₄
        ```

    === "中音谱号"

        ``` abc
        T:中音谱号
        T:C 谱号
        K:alto
          C  | C  D  E  F  G  A  B
        w:C₄ | C₄ D₄ E₄ F₄ G₄ A₄ B₄
        ```

    === "次中音谱号"

        ``` abc
        T:次中音谱号
        K:tenor
          C  | C  D  E  F  G  A  B
        w:C₄ | C₄ D₄ E₄ F₄ G₄ A₄ B₄
        ```

    === "低音谱号"

        ``` abc
        T:低音谱号
        T:F 谱号
        K:bass
          F, | C  D  E  F  G  A  B
        w:F₃ | C₄ D₄ E₄ F₄ G₄ A₄ B₄
        ```

??? "调式"

    !!! cite inline end

        [Mode (music) - Wikipedia](https://wikipedia.org/wiki/Mode_(music))

    === "伊奥尼亚调式"

        ``` abc
        T:伊奥尼亚调式（Ionian）
        T:自然大调（Major）
        K:C ionian
          C  D  E  F  G  A  B  c
        w:C  D  E  F  G  A  B  c
        ```

    === "多利亚调式"

        ``` abc
        T:多利亚调式（Dorian）
        K:C dorian
          C  D  E  F  G  A  B  c
        w:C  D  E♭ F  G  A  B♭ c
        ```

    === "弗里几亚调式"

        ``` abc
        T:弗里几亚调式（Phrygian）
        K:C phrygian
          C  D  E  F  G  A  B  c
        w:C  D♭ E♭ F  G  A♭ B♭ c
        ```

    === "利底亚调式"

        ``` abc
        T:利底亚调式（Lydian）
        K:C lydian
          C  D  E  F  G  A  B  c
        w:C  D  E  F♯ G  A  B  c
        ```

    === "混合利底亚调式"

        ``` abc
        T:混合利底亚调式（Mixo-lydian）
        K:C mixolydian
          C  D  E  F  G  A  B  c
        w:C  D  E  F  G  A  B♭ c
        ```

    === "爱奥尼亚调式"

        ``` abc
        T:爱奥尼亚调式（Aeolian）
        T:自然小调（Minor）
        K:C aeolian
          C  D  E  F  G  A  B  c
        w:C  D  E♭ F  G  A♭ B♭ c
        ```

    === "洛克里亚调式"

        ``` abc
        T:洛克里亚调式（Locrian）
        K:C locrian
          C  D  E  F  G  A  B  c
        w:C  D♭ E♭ F  G♭ A♭ B♭ c
        ```

<!----------------------------------------------------------------------------->

[^声音 on Wikipedia]: [声音 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/声音)
[^声波 on Wikipedia]: [声波 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/声波)
[^声压 on Wikipedia]: [声压 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/声压)
[^Consonance and dissonance on Wikipedia]: [Consonance and dissonance - Wikipedia](https://en.wikipedia.org/wiki/Consonance_and_dissonance)
[^三分损益法 on Wikipedia]: [三分损益法 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/十二律#三分损益法)
[^五度相生律 on Wikipedia]: [五度相生律 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/五度相生律)
[^十二平均律 on Wikipedia]: [十二平均律 - 维基百科，自由的百科全书](https://zh.wikipedia.org/wiki/十二平均律)
[^标准音高]: [ISO 16:1975 - Acoustics — Standard tuning frequency (Standard musical pitch)](https://iso.org/standard/3601.html)
[^科学音高记号法 on Wikipedia]: [Scientific pitch notation - Wikipedia](https://wikipedia.org/wiki/Scientific_pitch_notation)
