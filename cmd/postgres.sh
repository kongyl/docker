# postgres
docker run -d --name postgis -e POSTGRES_PASSWORD=postgres --restart always -p 5432:5432 -v /home/kongyl/Test/postgis/data:/var/lib/postgresql/data kongyl/postgis


