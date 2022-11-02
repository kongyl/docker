# kongyl/postgis:15.0-3.3.1
FROM postgres:15.0
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="15.0-3.3.1"
RUN \
  mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
  echo "deb http://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main non-free contrib" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.tuna.tsinghua.edu.cn/debian-security/ bullseye-security main" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main non-free contrib" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main non-free contrib" >>/etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y --no-install-recommends postgresql-15-postgis-3 postgis && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
