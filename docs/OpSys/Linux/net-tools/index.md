# net-tools 网络实用工具集

[net-tools]

| net-tools         | iproute2      |
|:----------------- |:------------- |
| [`arp`][1]        | `ip neigh`    |
| [`hostname`][2]   |               |
| [`ifconfig`][3]   | `ip addr`     |
| `ipmaddr`         | `ip maddr`    |
| `iptunnel`        | `ip tunnel`   |
| [`mii-tool`][6]   | `ethtool`     |
| [`nameif`][7]     | `ifrename`    |
| [`netstat`][8]    | `ss`          |
| [`plipconfig`][9] |               |
| [`rarp`][10]      |               |
| [`route`][11]     | `ip route`    |
| [`slattach`][12]  |               |

[1]:  <https://net-tools.sourceforge.io/man/arp.8.html>
[2]:  <https://net-tools.sourceforge.io/man/hostname.1.html>
[3]:  <https://net-tools.sourceforge.io/man/ifconfig.8.html>
[6]:  <https://net-tools.sourceforge.io/man/mii-tool.8.html>
[7]:  <https://net-tools.sourceforge.io/man/nameif.8.html>
[8]:  <https://net-tools.sourceforge.io/man/netstat.8.html>
[9]:  <https://net-tools.sourceforge.io/man/plipconfig.8.html>
[10]: <https://net-tools.sourceforge.io/man/rarp.8.html>
[11]: <https://net-tools.sourceforge.io/man/route.8.html>
[12]: <https://net-tools.sourceforge.io/man/slattach.8.html>

参见 [networking:net-tools \[Wiki\]](https://wiki.linuxfoundation.org/networking/net-tools)。

## 路由

=== "查询到主机的路由"

    ``` console
    [user@host *]$ ping -R <ipv4-address>
    ```

=== "列出路由表"

    ``` console
    [user@host *]$ route [-n|--numeric]
    ```

=== "修改到主机的路由"

    ``` console
    # 指定网关
    [user@host *]$ route add -host <ipv4-address> gw <gateway-ipv4-address>

    # 指定网卡
    [user@host *]$ route add -host <ipv4-address> dev <network-interface>
    ```

=== "修改到网络的路由"

    ``` console
    # 指定网关
    [user@host *]$ route add -net <ipv4-net>/<mask> gw <gateway-ipv4-address>

    # 指定网卡
    [user@host *]$ route add -net <ipv4-net>/<mask> dev <network-interface>
    ```

<!----------------------------------------------------------------------------->

--8<-- "includes/abbreviations.md"
--8<-- "includes/links.md"
