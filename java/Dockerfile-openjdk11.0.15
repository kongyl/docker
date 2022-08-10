# kongyl/java:openjdk-11.0.15-jre-headless
FROM ubuntu:jammy
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="openjdk-11.0.15-jre-headless"
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends openjdk-11-jre-headless && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV CLASSPATH=.:$JAVA_HOME/lib
ENV PATH=$PATH:$JAVA_HOME/bin
