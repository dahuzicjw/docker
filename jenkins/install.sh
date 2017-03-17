#!/bin/bash
docker build -t jenkins:latest .
docker stop jenkins
docker rm jenkins
docker run --name jenkins -d -t -p8083:8080 jenkins:latest
docker exec -it jenkins bash
