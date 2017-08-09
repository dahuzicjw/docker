# VERSION zookeeper
FROM registry.cn-hangzhou.aliyuncs.com/kevin72c/alpine-openjdk8:latest
MAINTAINER Kevin"kevin72c@qq.com"

WORKDIR /usr/local

# Zookeeper
RUN wget http://mirrors.hust.edu.cn/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz  \
    && tar -zxvf zookeeper-*.tar.gz
ADD zoo.cfg /usr/local/zookeeper-3.4.8/conf/

EXPOSE 2181

ENTRYPOINT /usr/local/zookeeper-3.4.8/bin/zkServer.sh start && /bin/bash
