# This readme is a draft

## Filebeat

**test configuration**

```
/usr/share/filebeat/bin/filebeat -path.config /etc/filebeat -configtest -e
```

Logs location: /var/log/filebeat

## Logtsash

Logs location: /var/log/logstash

Website to help building Grok patterns: http://grokconstructor.appspot.com/


## Improvements

- replace `sleep`s in start scripts with `netcat` checks
