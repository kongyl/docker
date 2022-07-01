# kongyl/mapproxy:1.15.1
FROM ubuntu:jammy
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL version="1.15.1"
# mapproxy
RUN \
  mv /etc/apt/sources.list /etc/apt/sources.list.bak && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse" >>/etc/apt/sources.list && \
  echo "deb http://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >>/etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y --no-install-recommends python3 python3-pip python3-pil python3-yaml && \
  pip3 install -i https://pypi.mirrors.ustc.edu.cn/simple/ pyproj && \
  pip3 install -i https://pypi.mirrors.ustc.edu.cn/simple/ six && \
  pip3 install -i https://pypi.mirrors.ustc.edu.cn/simple/ MapProxy && \
  apt-get autoremove -y && \
  rm -rf /root/.cache/pip && \
  rm -rf /var/lib/apt/lists/*
# uwsgi
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends build-essential python3-dev && \
  pip3 install -i https://pypi.mirrors.ustc.edu.cn/simple/ uwsgi && \
  apt-get remove -y build-essential && \
  apt-get autoremove -y && \
  rm -rf /root/.cache/pip && \
  rm -rf /var/lib/apt/lists/*
EXPOSE 9090
WORKDIR /mapproxy
ENTRYPOINT ["uwsgi", "--http", ":9090", "--wsgi-file", "config.py"]

