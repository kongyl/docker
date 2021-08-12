# build
docker build -t kongyl/geoserver:2.19.2 .
# run
docker run -d --name geoserver --restart always -p 8090:8080 -v /home/kongyl/Programs/GeoServer:/geoserver kongyl/geoserver:2.19.2
