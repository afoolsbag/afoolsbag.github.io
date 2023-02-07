# 命名

## :material-rename: 主机命名约定

=== "示例"

    ``` text
    CNWUHGAS-D003
    中国武汉光谷应用服务器开发 3 号机
    
    CN WUH G AS - D003
    |  |   | |    |
    |  |   | |    开发 3 号机
    |  |   | |
    |  |   | 应用服务器
    |  |   |
    |  |   借指“光谷”机房
    |  |
    |  GB/T 2260-2007 标准中的“武汉”代码
    |
    ISO 3166-1:2013 标准中的“中国”代码
    ```

=== "语法"

    !!! cite inline end

        *   [ISO 3166-1:2013](https://www.iso.org/standard/63545.html)
        *   [ISO 3166-2:2013](https://www.iso.org/standard/63546.html)
        *   [GB/T 2260-2007](http://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=C9C488FD717AFDCD52157F41C3302C6D)
        *   [Deployment environment - Wikipedia](https://wikipedia.org/wiki/Deployment_environment)
        *   [Standardizing Host and Server Naming Conventions | The Official Device42 Blog](https://www.device42.com/blog/2014/02/standardizing-host-and-server-naming-conventions/)

    ``` ebnf
    (* 主机名 *)
    host name = country code , location code , unique site code , device role , '-' , service level , serial number ;
    
    (* 国家或地区代码 *)
    country code     = ? ISO 3166-1:2013 ? ;
    (* 国家或地区的主要子行政区代码 *)
    location code    = ? ISO 3166-2:2013 ? | ? GB/T 2260-2007 ? ;
    (* 唯一地点代码 *)
    unique site code = ? customize code ? ;
    (* 设备角色 *)
    device role      = "AS" |  (* Application Server 应用服务器 *)
                       "CS" |  (* Computing Server 计算服务器 *)
                       "DB" |  (* DataBase server 数据库服务器 *)
                       "DC" |  (* Domain Controller 域控制器 *)
                       "MQ" |  (* Message Queue server 消息队列服务器 *)
                       "RT" |  (* RouTer 路由器 *)
                       "SW" |  (* SWitch 交换机 *)
                       "WS" |  (* Web Server 网页服务器 *)
                       ? more ? ;
    (* 服务级别 *)
    service level    = 'D' | (* Development 开发 *)
                       'T' | (* Testing 测试 *)
                       'S' | (* Staging 预演 *)
                       'P' ; (* Production 生产 *)
    (* 序列号 *)
    serial number    = ? number ? ;
    ```
