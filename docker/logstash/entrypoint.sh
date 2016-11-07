#!/bin/bash

set -e

# Wait for ES to be fully operational
sleep 20

curl --user elastic:changeme -XPOST 'http://elasticsearch:9200/_xpack/security/role/filebeat_writer' -d @/roles/filebeat_writer.json
curl --user elastic:changeme -XPOST 'http://elasticsearch:9200/_xpack/security/user/logstash' -d @/logstash_user.json

# Add logstash as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- logstash "$@"
fi

# Run as user "logstash" if the command is "logstash"
if [ "$1" = 'logstash' ]; then
	set -- gosu logstash "$@"
fi

exec "$@"
