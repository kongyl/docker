FROM kongyl/java:oracle-jre-1.8.0_311
MAINTAINER kongyl
ADD geoserver-2.20.1.tar.gz /root
ENV GEOSERVER_HOME=/root/geoserver-2.20.1 GEOSERVER_DATA_DIR=/geoserver/data
EXPOSE 8080
WORKDIR /root/geoserver-2.20.1
ENTRYPOINT ["java", "-jar", "start.jar"]
