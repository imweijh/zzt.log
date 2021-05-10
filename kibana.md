查找大耗时请求
```
elapsed_time:>2000 AND NOT elapsed_expired_error
```

![image](https://user-images.githubusercontent.com/23710675/117610906-1ece1d80-b195-11eb-958a-0eda88ea324f.png)

![image](https://user-images.githubusercontent.com/23710675/117611108-779db600-b195-11eb-8c05-290e8bf2032e.png)


timelion zzt普通登录
```
.es(index="logstash-*",q='zzt_action:LOGIN AND fenggang',metric='avg:elapsed_time').label(普通登录-凤岗).yaxis(2),
.es(index="logstash-*",q='zzt_action:LOGIN AND rongchao',metric='avg:elapsed_time').label(普通登录-荣超).yaxis(2),
.es(index="logstash-*",q='zzt_action:LOGIN AND shanghai',metric='avg:elapsed_time').label(普通登录-上海).yaxis(2)
```

timelion zzt两融登录
```
.es(index="logstash-*",q='zzt_action:RZRQLOGIN AND fenggang',metric='avg:elapsed_time').label(两融登录-凤岗).yaxis(2),
.es(index="logstash-*",q='zzt_action:RZRQLOGIN AND rongchao',metric='avg:elapsed_time').label(两融登录-荣超).yaxis(2),
.es(index="logstash-*",q='zzt_action:RZRQLOGIN AND shanghai',metric='avg:elapsed_time').label(两融登录-上海).yaxis(2)
```

timelion zzt普通委托
```
.es(index="logstash-*",q='zzt_action:ENTRUSTSTOCK AND fenggang',metric='avg:elapsed_time').label(普通委托-凤岗).yaxis(2),
.es(index="logstash-*",q='zzt_action:ENTRUSTSTOCK AND rongchao',metric='avg:elapsed_time').label(普通委托-荣超).yaxis(2),
.es(index="logstash-*",q='zzt_action:ENTRUSTSTOCK AND shanghai',metric='avg:elapsed_time').label(普通委托-上海).yaxis(2)
```

timelion zzt两融委托
```
.es(index="logstash-*",q='zzt_action:RZRQENTRUSTSTOCK AND fenggang',metric='avg:elapsed_time').label(两融委托-凤岗).yaxis(2),
.es(index="logstash-*",q='zzt_action:RZRQENTRUSTSTOCK AND rongchao',metric='avg:elapsed_time').label(两融委托-荣超).yaxis(2),
.es(index="logstash-*",q='zzt_action:RZRQENTRUSTSTOCK AND shanghai',metric='avg:elapsed_time').label(两融委托-上海).yaxis(2)
```

timelion zzt普通撤单
```
.es(index="logstash-*",q='zzt_action:WITHDRAWEX AND fenggang',metric='avg:elapsed_time').label(普通撤单-凤岗).yaxis(2),
.es(index="logstash-*",q='zzt_action:WITHDRAWEX AND rongchao',metric='avg:elapsed_time').label(普通撤单-荣超).yaxis(2),
.es(index="logstash-*",q='zzt_action:WITHDRAWEX AND shanghai',metric='avg:elapsed_time').label(普通撤单-上海).yaxis(2)
```

timelion zzt两融撤单
```
.es(index="logstash-*",q='zzt_action:RZRQWITHDRAWEX AND fenggang',metric='avg:elapsed_time').label(两融撤单-凤岗).yaxis(2),
.es(index="logstash-*",q='zzt_action:RZRQWITHDRAWEX AND rongchao',metric='avg:elapsed_time').label(两融撤单-荣超).yaxis(2),
.es(index="logstash-*",q='zzt_action:RZRQWITHDRAWEX AND shanghai',metric='avg:elapsed_time').label(两融撤单-上海).yaxis(2)
```



