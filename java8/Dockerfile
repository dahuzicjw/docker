FROM alpine

RUN apk --update add bash openjdk8 \
  && rm -rf /var/cache/apk/*

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/
ENV JRE_HOME /usr/lib/jvm/java-1.8-openjdk/jre/