#!/bin/sh
docker build -t docker-elk:latest .
docker stop docker-elk
docker rm docker-elk
docker run --name docker-elk -d -t -p 5601:5601 -p 4560:4560 -v /data/elasticsearch/:/data/elasticsearch/ docker-elk:latest
docker exec -it docker-elk bash
