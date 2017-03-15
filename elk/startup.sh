#!/bin/sh
nohup ./logstash-5.2.2/bin/logstash -f conf/logstash.conf >/dev/null 2>&1 &
nohup ./kibana-5.2.2-linux-x86_64/bin/kibana >/dev/null 2>&1 &
nohup su elk ./elasticsearch-5.2.2/bin/elasticsearch >/dev/null 2>&1 &