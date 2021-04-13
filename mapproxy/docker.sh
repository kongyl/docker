# build
docker build -t kongyl/mapproxy:1.13.0 .
# tag
docker tag kongyl/mapproxy:1.13.0 kongyl/mapproxy:latest
# run
docker run --name mapproxy --restart=always -p 9090:9090 -v /home/kongyl/Test/docker/mapproxy:/mapproxy -d kongyl/mapproxy:1.13.0
docker run --name mapproxy --restart=always --network=postgres --ip=10.2.0.5 -v /home/kongyl/Test/docker/mapproxy:/mapproxy -d kongyl/mapproxy:1.13.0

