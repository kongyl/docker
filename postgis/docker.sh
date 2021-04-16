# build
docker build -t kongyl/postgis:13.2-3 .
# run
docker run --name postgres --restart=always -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d kongyl/postgis:13.2-3
docker run --name postgres --restart=always -e POSTGRES_PASSWORD=postgres --network=postgres --ip=10.2.0.2 -d kongyl/postgis:13.2-3
