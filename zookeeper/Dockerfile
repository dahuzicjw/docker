# VERSION redis0.0.1
FROM ubuntu:14.04
MAINTAINER Kevin "kevin72c@qq.com"

RUN apt-get update
RUN \
  apt-get install -y \
  vim \
  wget

WORKDIR /usr/local

# Zookeeper
RUN wget http://mirrors.hust.edu.cn/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz  \
    && tar -zxvf zookeeper-*.tar.gz
ADD zoo.cfg /usr/local/zookeeper-3.4.8/conf/

# JAVA
RUN wget --no-cookies --no-check-certificate --header "Cookie:gpw_e24=http%3a%2f%2fwww.oracle.com%2ftechnetwork%2fjava%2fjavase%2fdownloads%2fjdk7-downloads-1880260.html;oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz
RUN tar -zxvf jdk-8u121-linux-x64.tar.gz
ENV JAVA_HOME /usr/local/jdk1.8.0_121
ENV PATH $PATH:$JAVA_HOME/bin

EXPOSE 2181

ENTRYPOINT /usr/local/zookeeper-3.4.8/bin/zkServer.sh start && /bin/bash
