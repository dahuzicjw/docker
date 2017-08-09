#!/bin/sh
# ubuntu jre8基础镜像
docker build -t registry.cn-hangzhou.aliyuncs.com/kevin72c/ubuntu-jre8:latest .
docker push registry.cn-hangzhou.aliyuncs.com/kevin72c/ubuntu-jre8:latest
