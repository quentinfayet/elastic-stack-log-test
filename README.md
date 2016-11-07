# This readme is a draft

## Filebeat

**test configuration**

```
/usr/share/filebeat/bin/filebeat -path.config /etc/filebeat -configtest -e
```

Logs location: /var/log/filebeat

## Logtsash

Logs location: /var/log/logstash


## Improvements

- replace `sleep`s in start scripts with `netcat` checks
