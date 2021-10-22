# postgres
docker run -d --name postgis -e POSTGRES_PASSWORD=postgres --restart always -p 5432:5432 -v /home/kongyl/Test/postgis/data:/var/lib/postgresql/data kongyl/postgis

# pgadmin
docker run -d --name pgadmin --restart always -p 10080:80 -e 'PGADMIN_DEFAULT_EMAIL=kongyl@126.com' -e 'PGADMIN_DEFAULT_PASSWORD=tuxiangshi' dpage/pgadmin4
