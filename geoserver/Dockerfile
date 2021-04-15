FROM openjdk:8u282-jre-slim
MAINTAINER kongyl
# GDAL
RUN \
  apt update && \
  apt install -y gdal-bin libgdal-java && \
  apt autoremove -y && \
  rm -rf /var/cache/apk/* && \
  rm -rf /var/lib/apt/lists/*
ENV LD_LIBRARY_PATH /usr/lib/jni
# GeoServer
ADD geoserver-2.19.0.tar.gz /root
ENV GEOSERVER_HOME=/root/geoserver-2.19.0 GEOSERVER_DATA_DIR=/geoserver/data
ENV GDAL_DATA /usr/share/gdal # for geoserver gdal
EXPOSE 8080
WORKDIR /root/geoserver-2.19.0
ENTRYPOINT ["java", "-jar", "start.jar"]

