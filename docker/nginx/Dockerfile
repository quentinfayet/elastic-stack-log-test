FROM nginx

RUN apt-get update && \
    apt-get install -y wget curl

RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add - && \
    apt-get update && \
    apt-get install -y apt-transport-https

RUN echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" > /etc/apt/sources.list.d/elastic-5.x.list && \
    apt-get update && \
    apt-get install -y filebeat && \
    update-rc.d filebeat defaults 95 10

COPY docker/nginx/config/filebeat/filebeat.yml /etc/filebeat/filebeat.yml

COPY docker/nginx/config/nginx.conf /etc/nginx/nginx.conf

COPY docker/nginx/start.sh /usr/local/bin/start.sh

RUN chmod +x /usr/local/bin/start.sh

RUN rm /var/log/nginx/access.log /var/log/nginx/error.log

CMD ["/usr/local/bin/start.sh"]
