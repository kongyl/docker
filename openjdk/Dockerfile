FROM ubuntu:focal-20210827
MAINTAINER kongyl
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends openjdk-16-jre-headless && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME /usr/lib/jvm/java-16-openjdk-amd64
