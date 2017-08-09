# VERSION redis0.0.1
FROM ubuntu:14.04
MAINTAINER Kevin"kevin72c@qq.com"

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y redis-server

EXPOSE 6379

ADD redis.conf /etc/redis/redis.conf

ENTRYPOINT /etc/init.d/redis-server start && /bin/bash
