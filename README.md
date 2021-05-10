# logstash处理中焯交易事务处理机日志

ELK 7.x

filebeat处理多行日志（中焯多行日志会超过5000行，故 multiline.max_lines: 5000），发给logstash

中焯事务处理机日志，需要从请求应答日志的时间戳自己计算耗时。

计算耗时用 logstash-filter-elapsed，此插件需要额外安装：
```
cd /usr/share/logstash
bin/logstash-plugin install logstash-filter-elapsed
```
为计算正确，单台机器的日志需要由单线程处理，pipeline.workers=1

借助logstash pipelines.yml可以很好解决此问题。

用了三台机器，除部署elasticsearch集群，每台都安装logstash，开多个pipelines，每个pipeline一个worker，处理一台中焯日志。

即保证日志处理正确，也能充分利用CPU资源

![image](https://user-images.githubusercontent.com/23710675/117610646-abc4a700-b194-11eb-9309-3cb3e964faa2.png)



