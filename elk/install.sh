#!/bin/sh
# docker运行参数 -p 必填
# 项目运行环境 PROFILE 必填
#
# 例子启动测试环境: sh install.sh -p5601:5601

docker build -t docker-elk:latest .
docker stop docker-elk
docker rm docker-elk
docker run --name docker-elk -d -t -p 5601:5601 -p 9200:9200 -p 9600:9600 -p 9300:9300 -p 4560:4560 $* docker-elk:latest
docker exec -it docker-elk bash
