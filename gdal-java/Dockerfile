# kongyl/gdal-java:3.2.2-8
FROM kongyl/java:oracle-jre-1.8.0_321
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="3.2.2-8"
# GDAL
RUN \
  mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ impish main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ impish-security main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ impish-updates main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ impish-proposed main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ impish-backports main restricted universe multiverse" >>/etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y gdal-bin && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
ADD libgdalalljni-3.2.2.so /usr/lib/jni/libgdalalljni.so
ENV LD_LIBRARY_PATH /usr/lib/jni
