# postgis
# init
docker run -d --name postgis -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v postgis:/var/lib/postgresql/data postgis/postgis:16-3.4

