FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/superset:2.0.1
USER root
RUN rm -rf /var/lib/apt/lists/*
RUN pip install redis==3.5.3
RUN pip install mysqlclient
ADD security1.py /app
ADD elasticsearch-dbapi.tar.gz /
WORKDIR /elasticsearch-dbapi
RUN pip install .
