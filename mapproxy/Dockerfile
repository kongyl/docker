FROM debian:stable-slim
MAINTAINER kongyl
# mapproxy
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends python3 python3-pip python3-pil python3-yaml && \
  pip3 install -i https://pypi.mirrors.ustc.edu.cn/simple/ pyproj==2.6.1 && \
  pip3 install -i https://pypi.mirrors.ustc.edu.cn/simple/ setuptools && \
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

