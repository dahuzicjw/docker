# elk
暴露端口 5601 4560
文件目录挂载 /data/elasticsearch
启动命令 docker run --name docker-elk -d -t -p 5601:5601 -p 4560:4560 -v /data/elasticsearch/:/data/elasticsearch/ registry.cn-hangzhou.aliyuncs.com/kevin72c/elk:1.0.0-release