# kongyl/gdal-java:3.0.4-17
FROM kongyl/java:openjdk-17-jre-headless
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="3.0.4-17"
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends proj-bin gdal-bin libgdal-java && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
ENV LD_LIBRARY_PATH /usr/lib/jni
