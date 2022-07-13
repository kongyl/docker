# kongyl/postgis:14.4-3.2.1
FROM postgres
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="14.4-3.2.1"
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends postgresql-14-postgis-3 postgis && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*
