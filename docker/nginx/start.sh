#!/bin/bash

sleep 20
curl -XPUT --user elastic:changeme 'http://elasticsearch:9200/_template/filebeat?pretty' -d@/etc/filebeat/filebeat.template.json
/etc/init.d/filebeat start
nginx -g "daemon off;"
