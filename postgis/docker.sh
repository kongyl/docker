# build
docker build -t kongyl/geoserver:2.19.0 .
# run
docker run --name geoserver --restart=always -p 8090:8080 -v /home/kongyl/Programs/GeoServer:/geoserver -d kongyl/geoserver:2.19.0
docker run --name geoserver --restart=always --network=postgres --ip=10.2.0.4 -v /home/kongyl/Programs/GeoServer:/geoserver -d kongyl/geoserver:2.19.0


