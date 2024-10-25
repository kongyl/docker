# kongyl/ffmpeg:7.0.2
FROM ubuntu:oracular
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="7.0.2"
RUN \
  #mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
  #echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble main restricted universe multiverse" >>/etc/apt/sources.list && \
  #echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-security main restricted universe multiverse" >>/etc/apt/sources.list && \
  #echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-updates main restricted universe multiverse" >>/etc/apt/sources.list && \
  #echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-proposed main restricted universe multiverse" >>/etc/apt/sources.list && \
  #echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-backports main restricted universe multiverse" >>/etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y --no-install-recommends ffmpeg && \
  apt-get autoremove -y && \  
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*

