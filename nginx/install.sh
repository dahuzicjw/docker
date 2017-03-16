#!/bin/bash
docker build -t nginx:latest .
docker stop nginx
docker rm nginx
docker run --name nginx -p80:80 -d -t nginx:latest
