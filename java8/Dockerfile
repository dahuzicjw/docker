FROM alpine

RUN apk --update add bash openjdk8 \
  && rm -rf /var/cache/apk/*

EVN JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/
EVN JRE_HOME /usr/lib/jvm/java-1.8-openjdk/jre/

#ENTRYPOINT /bin/bash
