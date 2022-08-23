# kongyl/postgis:14.5-3.2.2
FROM postgres
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="14.5-3.2.2"
RUN \
  mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
  echo "deb http://mirrors.aliyun.com/debian/ bullseye main non-free contrib" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/debian-security/ bullseye-security main" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/debian/ bullseye-backports main non-free contrib" >>/etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y --no-install-recommends postgresql-14-postgis-3 postgis && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
