# 分布式消息服务 Kafka

官网 <https://kafka.apache.org/>。

一款图形用户界面客户端 [*Kafka Tools*](https://kafkatool.com/)。

## 常用命令组合

```fish
user@host ~> cd kafka/bin

# 列出可用话题
user@host ~/k/bin> ./kafka-topics.sh --bootstrap-server <host1:9092>[,host2:9092]... --list

# 查看某话题的描述
user@host ~/k/bin> ./kafka-topics.sh --bootstrap-server <host1:9092>[,host2:9092]... --describe --topic <topic>

# 查看话题中是否有消息
user@host ~/k/bin> ./kafka-console-consumer.sh --bootstrap-server <host1:9092>[,host2:9092]... --topic <topic> --from-beginning
```
