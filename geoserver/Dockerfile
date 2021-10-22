FROM kongyl/java:oracle-jre-1.8.0_301
MAINTAINER kongyl
ADD geoserver-2.20.0.tar.gz /root
ENV GEOSERVER_HOME=/root/geoserver-2.20.0 GEOSERVER_DATA_DIR=/geoserver/data
EXPOSE 8080
WORKDIR /root/geoserver-2.20.0
ENTRYPOINT ["java", "-jar", "start.jar"]
