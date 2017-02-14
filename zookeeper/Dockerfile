# VERSION redis0.0.1
FROM ubuntu:14.04
MAINTAINER Kevin "kevin72c@qq.com"

RUN apt-get update
RUN apt-get install -y vim
#RUN apt-get install -y wget
#RUN wget http://mirrors.hust.edu.cn/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz

ADD jdk-8u77-linux-x64.tar.gz /usr/local/
ADD zookeeper-3.4.8.tar.gz /usr/local/
ADD zoo.cfg /usr/local/zookeeper-3.4.8/conf/

ENV JAVA_HOME /usr/local/jdk1.8.0_77
ENV PATH $PATH:$JAVA_HOME/bin

EXPOSE 6379

#ENTRYPOINT /etc/init.d/redis-server start && /bin/bash
ENTRYPOINT /usr/local/zookeeper-3.4.8/bin/zkServer.sh start && /bin/bash
