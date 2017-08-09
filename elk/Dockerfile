# docker-elk
FROM localhost/repository/docker/ubuntu-jre8:latest
MAINTAINER Kevin"kevin72c@qq.com"

RUN apt-get update && apt-get install wget -y
WORKDIR /usr/local/server
VOLUME /data/elasticsearch

RUN wget -c -O elasticsearch.tar.gz --tries=0 https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.2.2.tar.gz
RUN wget -c -O logstash.tar.gz --tries=0 https://artifacts.elastic.co/downloads/logstash/logstash-5.2.2.tar.gz
RUN wget -c -O kibana.tar.gz --tries=0 https://artifacts.elastic.co/downloads/kibana/kibana-5.2.2-linux-x86_64.tar.gz
RUN tar -zxvf elasticsearch.tar.gz && rm elasticsearch.tar.gz
RUN tar -zxvf logstash.tar.gz && rm logstash.tar.gz
RUN tar -zxvf kibana.tar.gz && rm kibana.tar.gz

ADD conf ./
RUN mv kibana.yml kibana*/config/ && \
    mv elasticsearch.yml elasticsearch*/config/
ADD startup.sh ./
RUN chmod 777 startup.sh
RUN useradd elk
RUN chown -R elk elasticsearch-* && \
    mkdir /data && mkdir /data/elasticsearch && \
    chown -R elk /data/elasticsearch

EXPOSE 5601
EXPOSE 4560

ENTRYPOINT ./startup.sh && /bin/bash
