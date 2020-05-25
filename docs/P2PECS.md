# 点对点电子货币系统

点对点电子货币系统（Peer-to-Peer Electronic Cash Systems）

[*Bitcoin: A Peer-to-Peer Electronic Cash System*](https://bitcoin.org/bitcoin.pdf) <sub>
    [*cmn-Hans*](https://bitcoin.org/files/bitcoin-paper/bitcoin_zh_cn.pdf) </sub>

资讯
| [*巴比特*](https://8btc.com/)
| [*币世界*](https://bishijie.com/)
| [*链闻*](https://chainnews.com/)
| [*金色财经*](https://jinse.com/)
| [*Readhub - 区块链快讯*](https://readhub.cn/blockchain)
| [*陀螺财金*](https://tuoluocaijing.cn/)

行情
| [*CoinMarketCap*](https://coinmarketcap.com/)
| [*非小号*](https://feixiaohao.com/)
| [*Tokenview*](https://tokenview.com/)

指数
| <https://alternative.me/crypto/>

___
## 门罗币（MXR）

门罗币（Monero）发行于 2014 年 04 月 18 日，官网 <https://getmonero.org/>。

CryptoNote 的白皮书 [CryptoNote v 2.0](https://cryptonote.org/whitepaper.pdf) 。

头等仓上的《精通门罗币》翻译连载：

*   [前言](https://www.first.vip/project/3837.html)
*   [第一章：加密货币与门罗简介（上）](https://www.first.vip/project/3843.html)
*   [第一章：加密货币与门罗简介（下）](https://www.first.vip/project/3847.html)
*   [第二章：如何接收、存储和发送门罗币（上）](https://www.first.vip/project/3849.html)
*   [第二章：如何接收、存储和发送门罗币（下）](https://www.first.vip/project/3855.html)
*   [第三章：门罗币的工作原理（上）](https://www.first.vip/project/3857.html)
*   [第三章：门罗币的工作原理（下）](https://www.first.vip/project/16697.html)
*   [第四章：门罗币网络（一）](https://www.first.vip/project/16699.html)
*   [第四章：门罗币网络（二）](https://www.first.vip/project/16701.html)
*   [第四章：门罗币网络（三）](https://www.first.vip/project/16703.html)
*   [第四章：门罗币网络（四）](https://www.first.vip/project/3869.html)
*   [第六章：社区文化](https://www.first.vip/project/16709.html)
*   [第八章：钱包指南、答疑和贴士](https://www.first.vip/project/16711.html)

### 钱包

*   种子密语（seed）：需要严格保密
*   私钥（private keys）：由种子密语生成，需要严格保密
*   查看公钥（public view keys）：由种子密语生成，
*   花费公钥（public spend keys）：由种子密语生成，
*   主地址：由公钥生成，唯一，以 `4` 起头的 95 位字符串
*   子地址：由公钥生成，以 `8` 起头的 95 位字符串

### 挖矿

速率单位：

*   每秒散列，H/s，hashes per seconds
*   每秒千散列，kH/s，kilo-hashes per seconds
*   每秒百万散列，MH/s，mega-hashes per seconds
*   每秒十亿散列，GH/s，giga-hashes per seconds

矿机和矿池：

*   矿机 [*XMRig*](https://github.com/xmrig/xmrig)
*   矿机 [*XMRig-AMD*](https://github.com/xmrig/xmrig-amd)
*   矿机 [*XMRig-NVIDIA*](https://github.com/xmrig/xmrig-nvidia)
*   [矿池](https://miningpoolstats.stream/monero)

#### Windows+CPU+XMRig+F2Pool 简易挖矿流程

```bat
%USERPROFILE%> CD %TMP%
%TMP%> _
:: 下载 https://github.com/xmrig/xmrig/releases/download/v5.11.1/xmrig-5.11.1-msvc-win64.zip 并解压
%TMP%> CD xmrig-5.11.1
%USERPROFILE%\xmrig-5.11.1> xmrig --url=stratum+tcp://xmr.f2pool.com:13531 ^
                                  --user=<wallet_address>.<custom_name> ^
                                  --pass=x ^
                                  --keepalive ^
                                  --donate-level=1 ^
                                  --cpu-priority=0 ^
                                  --cpu-max-threads-hint=80
:: abbr.                    xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 --cpu-max-threads-hint=80
```

#### CentOS+CPU+XMRig+F2Pool 简易挖矿流程

```bash
[user@host *]$ cd /tmp
[user@host tmp]$ curl -O https://github.com/xmrig/xmrig/releases/download/v5.11.1/xmrig-5.11.1-gcc-win64.zip
[user@host tmp]$ tar -xavf xmrig-5.11.1-xenial-x64.tar.gz
[user@host tmp]$ cd xmrig-5.11.1
[user@host xmrig-5.11.1]$ ./xmrig --url=stratum+tcp://xmr.f2pool.com:13531 \
                                  --user=<wallet_address>.<custom_name> \
                                  --pass=x \
                                  --keepalive \
                                  --donate-level=1 \
                                  --cpu-priority=0 \
                                  --cpu-max-threads-hint=80
# abbr.                   ./xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 --cpu-max-threads-hint=80
```

#### Ubuntu+CPU+XMRig+F2Pool 简易挖矿流程

```bash
user@host:*$ cd /tmp
user@host:/tmp$ wget https://github.com.cnpmjs.org/xmrig/xmrig/releases/download/v5.11.1/xmrig-5.11.1-xenial-x64.tar.gz
user@host:/tmp$ tar -xavf xmrig-5.11.1-xenial-x64.tar.gz
user@host:/tmp$ cd xmrig-5.11.1
user@host:/tmp/xmrig-5.11.1$ ./xmrig --url=stratum+tcp://xmr.f2pool.com:13531 \
                                     --user=<wallet_address>.<custom_name> \
                                     --pass=x \
                                     --keepalive \
                                     --donate-level=1 \
                                     --cpu-priority=0 \
                                     --cpu-max-threads-hint=80
# abbr.                      ./xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 --cpu-max-threads-hint=80
```
