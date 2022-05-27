# kongyl/geoserver:2.21.0
FROM kongyl/java:openjdk-11.0.15-jre-headless
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="2.21.0"
ADD geoserver-2.21.0.tar.gz /root
ENV GEOSERVER_HOME=/root/geoserver-2.21.0 GEOSERVER_DATA_DIR=/geoserver/data
EXPOSE 8080
WORKDIR /root/geoserver-2.21.0
ENTRYPOINT ["java", "-jar", "start.jar"]
