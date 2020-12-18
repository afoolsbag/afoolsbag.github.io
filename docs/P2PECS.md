# P2PECS

点对点电子货币系统（P2PECS）。[^Cryptocurrency on Wikipedia]

参见 [Bitcoin: A Peer-to-Peer Electronic Cash System](https://bitcoin.org/bitcoin.pdf) ([cmn-Hans](https://bitcoin.org/files/bitcoin-paper/bitcoin_zh_cn.pdf))。

## 资讯

恐慌和贪婪指数：[Crypto Dashboard](https://alternative.me/crypto/)

[巴比特](https://8btc.com/)
| [币世界](https://bishijie.com/)
| [链闻](https://chainnews.com/)
| [金色财经](https://jinse.com/)
| [Readhub](https://readhub.cn/blockchain)
| [陀螺财金](https://tuoluocaijing.cn/)

## 币种

| 发行时间   | 币种              |               符号                | 共识机制        |
| :--------- | :---------------- | :-------------------------------: | :-------------- |
| 2018-01-31 | 柚子币 [EOS.IO]   |               `EOS`               |
| 2015-07-30 | 以太坊 [Ethereum] |     :material-ethereum: `ETH`     | PoW: Ethash     |
| 2014-10-06 | 泰达币 [Tether]   |             ₮ `USDT`              |
| 2014-04-18 | 门罗币 [Monero]   | :fontawesome-brands-monero: `XMR` | PoW: CryptoNote |
| 2012       | 瑞波币 [Ripple]   |               `XRP`               |
| 2011-10-07 | 莱特币 [Litecoin] |     :material-litecoin: `LTC`     | PoW: Scrypt     |
| 2009-01-03 | 比特币 [Bitcoin]  |     :material-bitcoin: `BTC`      | PoW: SHA-256    |

参见：

*   [非小号 § 行情](https://www.feixiaohao.com/)
*   [Tokenview](https://tokenview.com/)
*   [CoinMarketCap](https://coinmarketcap.com/)

## 交易所

[币安](https://www.binance.com/cn) | [火币](https://www.huobi.com/zh-cn/) | [OKEx](https://www.okex.com/)

参见：

*    [非小号 § 平台](https://www.feixiaohao.com/exchange/)

## 交易方式

### 现货

### 期货

### 期权

## 门罗币（:fontawesome-brands-monero: `XMR`）

### 教程

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

| 术语     | 英文              | 笔记                                        |
| :------- | :---------------- | :------------------------------------------ |
| 种子密语 | seed              | 需要严格保密                                |
| 私钥     | private keys      | 由种子密语生成，需要严格保密                |
| 查看公钥 | public view keys  | 由种子密语生成                              |
| 花费公钥 | public spend keys | 由种子密语生成                              |
| 主地址   |                   | 由公钥生成，唯一，以 `4` 起头的 95 位字符串 |
| 子地址   |                   | 由公钥生成，以 `8` 起头的 95 位字符串       |

### 挖矿

1 GH/s = 10^3^ MH/s = 10^6^ kH/s = 10^9^ H/s

[矿机推荐列表](https://web.getmonero.org/get-started/mining/)

*   [XMRig](https://github.com/xmrig/xmrig)
*   [XMRig-AMD](https://github.com/xmrig/xmrig-amd)
*   [XMRig-NVIDIA](https://github.com/xmrig/xmrig-nvidia)

[矿池推荐列表](https://miningpoolstats.stream/monero)

*   [F2Pool](https://www.f2pool.com/)

#### :material-microsoft-windows: Windows + :material-cpu-64-bit: CPU + XMRig + F2Pool

``` ps1con
#                    Set-Variable
PS $env:USERPROFILE> set url https://github.com/xmrig/xmrig/releases/download/v6.6.2/xmrig-6.6.2-msvc-win64.zip
PS $env:USERPROFILE> set zip $env:TMP\xmrig-6.6.2-msvc-win64.zip
PS $env:USERPROFILE> set dir $env:TMP\xmrig-6.6.2

PS $env:USERPROFILE> Invoke-WebRequest -UseBasicParsing $url -OutFile $zip
PS abbr.           > iwr -useb $url -o $zip

PS $env:USERPROFILE> Expand-Archive $zip $dir\..

PS $env:USERPROFILE> $dir\xmrig --url=stratum+tcp://xmr.f2pool.com:13531 ^
                                --user=<wallet_address>.<custom_name> ^
                                --pass=x ^
                                --keepalive ^
                                --donate-level=1 ^
                                --cpu-priority=0 ^
                                --background
PS abbr.           > $dir\xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 -B
```

#### :material-linux: Linux + :material-cpu-64-bit: CPU + XMRig + F2Pool

``` console
[user@host ~]$ cd /tmp

[user@host tmp]$ curl -O https://github.com/xmrig/xmrig/releases/download/v6.6.2/xmrig-6.6.2-linux-x64.tar.gz

[user@host tmp]$ tar -xavf xmrig-6.6.2-linux-x64.tar.gz

[user@host tmp]$ cd xmrig-6.6.2

[user@host xmrig-6.6.2]$ ./xmrig --url=stratum+tcp://xmr.f2pool.com:13531 \
                                  --user=<wallet_address>.<custom_name> \
                                  --pass=x \
                                  --keepalive \
                                  --donate-level=1 \
                                  --cpu-priority=0 \
                                  --background
[abbr.                 ]$ ./xmrig -o stratum+tcp://xmr.f2pool.com:13531 -u <wallet_address>.<custom_name> -p x -k --donate-level=1 --cpu-priority=0 -B
```

<!----------------------------------------------------------------------------->

[^Cryptocurrency on Wikipedia]: [Cryptocurrency - Wikipedia](https://wikipedia.org/wiki/Cryptocurrency).

[Bitcoin]:  https://bitcoin.org/
[EOS.IO]:   https://eos.io/
[Ethereum]: https://ethereum.org/
[Litecoin]: https://litecoin-foundation.org/
[Monero]:   https://getmonero.org/
[Ripple]:   https://xrpl.org/
[Tether]:   https://tether.to/

*[H/s]:    Hashes per Seconds
*[kH/s]:   Kilo-Hashes per Seconds
*[MH/s]:   Mega-Hashes per Seconds
*[GH/s]:   Giga-Hashes per Seconds
*[P2PECS]: Peer-to-Peer Electronic Cash Systems
*[PoS]:    Proof-of-Stake
*[PoW]:    Proof-of-Work
