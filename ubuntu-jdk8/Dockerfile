# ubuntu-jre8
FROM ubuntu:14.04
MAINTAINER Kevin "kevin72c@qq.com"

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local

# download jdk8
RUN wget -c --tries=0 -O jdk8.tar.gz "http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz?AuthParam=1489742799_3714c960fd179884decab9706339fca6"

RUN tar -zxvf jdk8.tar.gz && rm jdk8.tar.gz
ENV JAVA_HOME /usr/local/jdk1.8.0_121
ENV PATH $PATH:$JAVA_HOME/bin
