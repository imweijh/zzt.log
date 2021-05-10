# logstash处理中焯交易事务处理机日志

ELK 7.x

中焯事务处理机日志，需要从请求应答日志的时间戳自己计算耗时。

计算耗时用 logstash-filter-elapsed，此插件需要额外安装：
```
cd /usr/share/logstash
bin/logstash-plugin install logstash-filter-elapsed
```
为计算正确，单台机器的日志需要由单线程处理，设置 pipeline.workers=1

借助logstash pipelines.yml可以很好解决此问题。

用了三台机器，除部署elasticsearch集群，每台都安装logstash，开多个pipelines，每个pipeline一个worker处理一台中焯日志。


