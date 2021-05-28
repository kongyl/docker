# redis
docker run --name redis --restart=always --network=common --ip=10.0.0.2 -d redis
docker run --name redis --restart=always -p 6379:6379 -d redis
