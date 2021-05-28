FROM openjdk:8u292-jre-slim
MAINTAINER kongyl
# GDAL
RUN \
  apt update && \
  apt install -y --no-install-recommends gdal-bin libgdal-java && \
  apt autoremove -y && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
ENV LD_LIBRARY_PATH /usr/lib/jni
# GeoServer
ADD geoserver-2.19.1.tar.gz /root
ENV GEOSERVER_HOME=/root/geoserver-2.19.1 GEOSERVER_DATA_DIR=/geoserver/data
ENV GDAL_DATA /usr/share/gdal # for geoserver gdal
EXPOSE 8080
WORKDIR /root/geoserver-2.19.1
ENTRYPOINT ["java", "-jar", "start.jar"]
