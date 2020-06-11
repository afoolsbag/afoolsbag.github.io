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


电子货币[*列表*](https://www.feixiaohao.com/)

*   比特币（BTC），发行于 2009 年 01 月 03 日
*   莱特币（LTC），发行于 2011 年 11 月 09 日
*   以太坊（ETH），发行于 2015 年 03 月 20 日
*   柚子（EOS），

交易所[*列表*](https://www.feixiaohao.com/exchange/)

*   [*火币*](https://www.huobi.com/zh-cn/)
*   [*币安*](https://www.binance.com/cn)
*   [*OKEx*](https://www.okex.com/)

## 期货
---

*   现货：一手交钱，一手交货。
*   远期合约：货物尚未产出，提前签订合约，待货物产出后按合约履行。
    *   套期保值；
    *   毁约风险：其时价差甚于定金，以利计，不如毁约；
    *   质量风险：货物质量须买方自行查验；
    *   交易风险：卖方因故无法产出货物。
*   标准期货合约：规定了商品质量、商品数量、交割时间、交割地点和交割方式。
    *   卖方：提供仓单证明或保证金，持有卖方合约，待交割后退还保证金；
    *   买方：提供保证金，持有买方合约，交割时保证金用作预付款；
    *   保证金交易制度：假定 `10%` 保证金，有

|  合约价格 |  结余 | 保证金 |      现金 |        |      现金 | 保证金 |  结余 | 说明 |
| ---------:| -----:| ------:| ---------:|:------:| ---------:| ------:| -----:|:---- |
| **10000** |     0 |   1000 | **-1000** |        | **-1000** |   1000 |     0 | **开仓**
| **11000** | -1000 |   1100 | **-2100** | >1000> | **-1000** |   2000 | +1000 | 合约**上涨 10%**
| **16500** | -6500 |   1650 | **-8150** | >5500> | **-1000** |   7500 | +6500 | 合约**上涨 50%**
|  **8250** | +1750 |   9900 | **-8150** | <8250< | **-2575** |    825 | -1750 | 合约**下跌 50%**
|  **8250** | +1750 |      0 | **+1750** |        | **-1750** |      0 | -1750 | **平仓**

## 门罗币（MXR）
---

门罗币（Monero）发行于 2014 年 04 月 18 日，官网 <https://getmonero.org/>。

CryptoNote 的白皮书 [CryptoNote v 2.0](https://cryptonote.org/whitepaper.pdf)。

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

*   [*矿机推荐列表*](https://web.getmonero.org/get-started/mining/)
*   [*XMRig*](https://github.com/xmrig/xmrig)
*   [*XMRig-AMD*](https://github.com/xmrig/xmrig-amd)
*   [*XMRig-NVIDIA*](https://github.com/xmrig/xmrig-nvidia)
*   [*矿池推荐列表*](https://miningpoolstats.stream/monero)
*   [*F2Pool*](https://www.f2pool.com/)

#### Windows+CPU+XMRig+F2Pool 简易挖矿流程

```cmd
%USERPROFILE%> CD %TMP%
%TMP%> _
:: 下载 https://github.com/xmrig/xmrig/releases/download/v5.11.2/xmrig-5.11.2-msvc-win64.zip 并解压
%TMP%> CD xmrig-5.11.2
%TMP%\xmrig-5.11.2> xmrig --url=stratum+tcp://xmr.f2pool.com:13531 ^
                          --user=<wallet_address>.<custom_name> ^
                          --pass=x ^
                          --keepalive ^
                          --donate-level=1 ^
                          --cpu-priority=0 ^
                          --background
:: abbr.            xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 -B
```

#### CentOS+CPU+XMRig+F2Pool 简易挖矿流程

```sh
[user@host ~]$ cd /tmp
[user@host tmp]$ curl -O https://github.com/xmrig/xmrig/releases/download/v5.11.2/xmrig-5.11.2-xenial-x64.tar.gz
[user@host tmp]$ tar -xavf xmrig-5.11.2-xenial-x64.tar.gz
[user@host tmp]$ cd xmrig-5.11.2
[user@host xmrig-5.11.2]$ ./xmrig --url=stratum+tcp://xmr.f2pool.com:13531 \
                                  --user=<wallet_address>.<custom_name> \
                                  --pass=x \
                                  --keepalive \
                                  --donate-level=1 \
                                  --cpu-priority=0 \
                                  --background
# abbr.                   ./xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 -B
```

#### Ubuntu+CPU+XMRig+F2Pool 简易挖矿流程

```sh
user@host:~$ cd /tmp
user@host:/tmp$ wget https://github.com/xmrig/xmrig/releases/download/v5.11.2/xmrig-5.11.2-xenial-x64.tar.gz
user@host:/tmp$ tar -xavf xmrig-5.11.2-xenial-x64.tar.gz
user@host:/tmp$ cd xmrig-5.11.2
user@host:/tmp/xmrig-5.11.2$ ./xmrig --url=stratum+tcp://xmr.f2pool.com:13531 \
                                     --user=<wallet_address>.<custom_name> \
                                     --pass=x \
                                     --keepalive \
                                     --donate-level=1 \
                                     --cpu-priority=0 \
                                     --background
# abbr.                      ./xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 -B
```
