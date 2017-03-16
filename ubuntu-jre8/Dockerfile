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
RUN wget -O jre8.tar.gz http://javadl.oracle.com/webapps/download/AutoDL?BundleId=218823_e9e7ea248e2c4826b92b3f075a80e441

RUN pwd && ls && ls -l
RUN tar -zxvf jre8.tar.gz && rm jre8.tar.gz
ENV JAVA_HOME /usr/local/jre1.8.0_121
ENV PATH $PATH:$JAVA_HOME/bin
