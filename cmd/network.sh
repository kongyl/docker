docker network create --subnet=10.0.0.0/24 common
docker network create --subnet=10.1.0.0/24 mysql
docker network create --subnet=10.2.0.0/24 postgres
docker network create --subnet=10.3.0.0/24 oracle

