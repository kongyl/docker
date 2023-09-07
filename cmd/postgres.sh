# postgis
docker run -d --name postgis -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v /home/kongyl/Test/postgis/data:/var/lib/postgresql/data postgis/postgis:15-3.4

sudo podman run -d --name postgis -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v /home/kongyl/Test/postgis/data:/var/lib/postgresql/data docker.io/postgis/postgis:15-3.4 
