# export
docker export postgres >  /home/kongyl/Downloads/postgres.tar
# import 
docker import - kongyl/postgres < postgres.tar

# 提交
docker commit ubuntu kongyl/ubuntu:0.1.0
