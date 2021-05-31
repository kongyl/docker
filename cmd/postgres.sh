# postgres
docker run --name postgis -e POSTGRES_PASSWORD=postgres --restart=always --network=postgres --ip=10.2.0.2 -d postgis/postgis
docker run --name postgis -e POSTGRES_PASSWORD=postgres --restart=always -p 5432:5432 -d postgis/postgis

# pgadmin
docker run -d --name pgadmin --restart always -p 10080:80 -e 'PGADMIN_DEFAULT_EMAIL=kongyl@126.com' -e 'PGADMIN_DEFAULT_PASSWORD=tuxiangshi' dpage/pgadmin4:5.3
