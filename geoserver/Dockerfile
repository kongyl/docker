# kongyl/geoserver:2.21.1
FROM kongyl/java:openjdk-11.0.16-jre-headless
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="2.21.1"
ADD geoserver-2.21.1.tar.gz /root
ENV GEOSERVER_HOME=/root/geoserver-2.21.1 GEOSERVER_DATA_DIR=/geoserver/data
EXPOSE 8080
WORKDIR /root/geoserver-2.21.1
ENTRYPOINT ["bin/startup.sh"]
