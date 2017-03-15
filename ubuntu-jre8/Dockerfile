# ubuntu-jre8
FROM ubuntu:14.04
MAINTAINER Kevin "kevin72c@qq.com"

RUN apt-get update
RUN \
  apt-get install -y \
  vim \
  wget

WORKDIR /usr/local

# JAVA
RUN wget -O jre8 --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://sdlc-esd.oracle.com/ESD6/JSCDL/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-linux-x64.tar.gz?GroupName=JSC&FilePath=/ESD6/JSCDL/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-linux-x64.tar.gz&BHost=javadl.sun.com&File=jre-8u121-linux-x64.tar.gz&AuthParam=1489052920_5583dff5d0a986bbd7683cae6c7e7c8a&ext=.gz"

RUN pwd && ls && ls -l
RUN tar -zxvf jre8 && rm jre8
ENV JAVA_HOME /usr/local/jre1.8.0_121
ENV PATH $PATH:$JAVA_HOME/bin
