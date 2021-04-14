FROM postgres:13.2
MAINTAINER kongyl
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends postgresql-13-postgis-3 && \
  apt-get autoremove -y && \
  rm -rf /var/lib/apt/lists/*

