FROM kongyl/java:jre8
# GDAL
RUN \
  mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >>/etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y gdal-bin && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
ADD libgdalalljni-3.4.1.so /usr/lib/jni/libgdalalljni.so
ENV LD_LIBRARY_PATH /usr/lib/jni
