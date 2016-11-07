# This readme is a draft

Run

```
sudo sysctl -w vm.max_map_count=262144 &&
mkdir .data &&
sudo chmod 777 .data
```

## Filebeat

**test configuration**

```
/usr/share/filebeat/bin/filebeat -path.config /etc/filebeat -configtest -e
```

Logs location: /var/log/filebeat

## Logtsash

Logs location: /var/log/logstash

Website to help building Grok patterns: http://grokconstructor.appspot.com/

## Tools

Container that handles tooling.

**stressing nginx:**

```
docker-compose run tools /bin/bash
siege -c10 -t15s http://nginx
```

## Improvements

- replace `sleep`s in start scripts with `netcat` checks (or find even better way)
