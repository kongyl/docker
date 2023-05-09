# kongyl/gdal-java:3.6.4-8-hdfs-centos
FROM kongyl/java:oracle-jdk-1.8.0_371-centos
LABEL author="kongyl"
LABEL email="kongyl@126.com"
LABEL java.version="oracle-jdk-1.8.0_371"
LABEL hadoop.version="3.3.5"
LABEL gdal.version="3.6.4"

# add dependencies
ADD cmake-3.26.3-linux-x86_64.tar.gz /opt
ADD apache-ant-1.10.13-bin.tar.gz /opt
ADD swig-4.1.1.tar.gz /opt
ADD sqlite-autoconf-3410200.tar.gz /opt
ADD proj-9.2.0.tar.gz /opt
ADD hadoop-3.3.5.tar.gz /opt
ADD gdal-3.6.4.tar.gz /opt
ENV PATH=$PATH:/opt/cmake-3.26.3-linux-x86_64/bin:/opt/apache-ant-1.10.13/bin

# run
RUN \
  # gcc
  yum install -y pcre2-devel && \
  rm -f /usr/bin/gcc && \
  yum install -y centos-release-scl && \
  yum install -y devtoolset-11-gcc-c++ && \
  ln -s /opt/rh/devtoolset-11/root/bin/gcc /usr/bin/gcc && \
  ln -s /opt/rh/devtoolset-11/root/bin/g++ /usr/bin/g++ && \
  # swig
  mkdir /opt/swig-4.1.1/build && \
  cd /opt/swig-4.1.1/build && \
  ../configure --prefix=/usr && \
  make && \
  make install && \
  # sqlite
  mkdir /opt/sqlite-autoconf-3410200/build && \
  cd /opt/sqlite-autoconf-3410200/build && \
  ../configure --prefix=/usr && \
  make && \
  make install && \
  # proj
  yum install -y libtiff-devel && \
  mkdir /opt/proj-9.2.0/build && \
  cd /opt/proj-9.2.0/build && \
  cmake -DCMAKE_INSTALL_PREFIX=/usr -DENABLE_CURL=OFF -DBUILD_APPS=OFF -DBUILD_TESTING=OFF .. && \
  cmake --build . && \
  cmake --build . --target install && \
  # gdal
  yum install -y libcurl-devel && \
  mkdir /opt/gdal-3.6.4/build && \
  cd /opt/gdal-3.6.4/build && \
  cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DJAVA_AWT_INCLUDE_PATH=$JAVA_HOME/include -DJAVA_AWT_LIBRARY=$JRE_HOME/lib/amd64/server/libjvm.so -DHDFS_INCLUDE_DIR=/opt/hadoop-3.3.5/include -DHDFS_LIBRARY=/opt/hadoop-3.3.5/lib/native/libhdfs.so .. && \
  cmake --build . && \
  cmake --build . --target install && \
  # clean
  rm -f /usr/bin/gcc && \
  rm -f /usr/bin/g++ && \
  yum remove -y devtoolset-11-runtime && \
  yum remove -y centos-release-scl-rh && \
  rm -rf /opt/gdal-3.6.4 && \
  rm -rf /opt/proj-9.2.0 && \
  rm -rf /opt/sqlite-autoconf-3410200 && \
  rm -rf /opt/swig-4.1.1 && \
  rm -rf /opt/apache-ant-1.10.13 && \
  rm -rf /opt/cmake-3.26.3-linux-x86_64

ENV HADOOP_HOME=/opt/hadoop-3.3.5
ENV CLASSPATH=$CLASSPATH:$HADOOP_HOME/etc/hadoop:$HADOOP_HOME/share/hadoop/common/*:$HADOOP_HOME/share/hadoop/common/lib/*:$HADOOP_HOME/share/hadoop/hdfs/*
ENV LD_LIBRARY_PATH=$JRE_HOME/lib/amd64/server:$HADOOP_HOME/lib/native:/usr/share/java
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$JAVA_HOME/bin:$JRE_HOME/bin
