# kongyl/java:openjdk-17.0.4-jre-headless
FROM ubuntu:jammy
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="openjdk-17.0.4-jre-headless"
RUN \
  mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >>/etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y --no-install-recommends openjdk-17-jre-headless && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV CLASSPATH=.:$JAVA_HOME/lib
ENV PATH=$PATH:$JAVA_HOME/bin
