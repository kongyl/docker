FROM debian:bullseye-20210816-slim
MAINTAINER kongyl "kongyl@126.com"
# JDK
ADD jdk-16.0.2_linux-x64_bin.tar.gz /usr/local
ENV JAVA_HOME=/usr/local/jdk-16.0.2
ENV CLASSPATH=.:$JAVA_HOME/lib
ENV PATH=$PATH:$JAVA_HOME/bin
# GDAL
RUN \
  apt-get update && \
  apt-get install -y gdal-bin && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
ADD libgdalalljni-3.2.2.so /usr/lib/jni/libgdalalljni.so
ENV LD_LIBRARY_PATH /usr/lib/jni
