FROM logstash:5

RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-beats

COPY docker/logstash/roles /roles

COPY docker/logstash/logstash_user.json /logstash_user.json

COPY docker/logstash/entrypoint.sh /docker-entrypoint.sh

RUN chmod +x /docker-entrypoint.sh
