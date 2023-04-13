# build
docker build -t kongyl/geoserver:2.23.0 .
# run
docker run -d --name geoserver -p 8090:8080 -v /home/kongyl/Test/geoserver:/geoserver docker.io/kongyl/geoserver:2.23.0
