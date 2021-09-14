FROM kongyl/openjdk:16.0.1-jre-headless
MAINTAINER kongyl
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends proj-bin gdal-bin libgdal-java && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
ENV LD_LIBRARY_PATH /usr/lib/jni
