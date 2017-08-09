#!/bin/sh
docker build -t registry.cn-hangzhou.aliyuncs.com/kevin72c/zookeeper:latest .
docker push registry.cn-hangzhou.aliyuncs.com/kevin72c/zookeeper:latest
