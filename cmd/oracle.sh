# oracle11g
docker run --privileged --name oracle11g -v /home/kongyl/Test/docker/oracle:/install jaspeen/oracle-11g
docker commit oracle11g kongyl/oracle11g
docker run --name oracle --restart=always -p 1521:1521 -d kongyl/oracle11g

# oracle12c
docker run -d -it --name oracle -p 1521:1521 store/oracle/database-enterprise:12.2.0.1

