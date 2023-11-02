# postgis
docker run -d --name postgis -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v /root/Test/postgis/data:/var/lib/postgresql/data postgis/postgis:16-3.4

