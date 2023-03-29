# pgadmin
docker run -d --name pgadmin -p 20080:20080 -e 'PGADMIN_DEFAULT_EMAIL=kongyl@126.com' -e 'PGADMIN_DEFAULT_PASSWORD=tuxiangshi' -e 'PGADMIN_LISTEN_PORT=20080' dpage/pgadmin4:6.21