FROM openjdk:8u282-jre-slim
MAINTAINER kongyl
# GDAL
#RUN \
#  apt-get update && \
#  apt-get install -y gdal-bin libgdal-java && \
#  apt-get autoremove -y && \
#  apt-get clean && \
#  rm -rf /var/lib/apt/lists/*
# GDAL with complied libgdal-java
RUN \
  apt-get update && \
  apt-get install -y gdal-bin && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
ADD libgdalalljni.so /usr/lib/jni/libgdalalljni.so
ENV LD_LIBRARY_PATH /usr/lib/jni
