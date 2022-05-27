# build
docker build -t kongyl/geoserver:2.21.0 .
# run
docker run -d --name geoserver --restart always -p 8090:8080 -v /home/kongyl/Programs/GeoServer:/geoserver kongyl/geoserver:2.21.0
