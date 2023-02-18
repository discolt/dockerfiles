FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/centos7:jdk15

ENV PATH /usr/share/elasticsearch/bin:$PATH

WORKDIR /usr/share/elasticsearch

# Download Elasticsearch release
RUN cd /opt && curl --retry 8 -s -L -O https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/elasticsearch-6.8.23.tar.gz && cd -
RUN tar zxf /opt/elasticsearch-6.8.23.tar.gz --strip-components=1
RUN grep ES_DISTRIBUTION_TYPE=tar /usr/share/elasticsearch/bin/elasticsearch-env \
    && sed -ie 's/ES_DISTRIBUTION_TYPE=tar/ES_DISTRIBUTION_TYPE=docker/' /usr/share/elasticsearch/bin/elasticsearch-env
RUN mkdir -p config data logs
RUN chmod 0775 config data logs
COPY config/elasticsearch.yml config/log4j2.properties config/jvm.options config/

RUN groupadd -g 1000 elasticsearch && \
    adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch && \
    chmod 0775 /usr/share/elasticsearch && \
    chgrp 0 /usr/share/elasticsearch

ENV PATH /usr/share/elasticsearch/bin:$PATH

COPY --chown=1000:0 bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh && \
    chmod g=u /etc/passwd && \
    chmod 0775 /usr/local/bin/docker-entrypoint.sh

EXPOSE 9200 9300
LABEL org.label-schema.build-date="2022-01-06T21:30:50.087716Z" \
  org.label-schema.license="Elastic-License" \
  org.label-schema.name="Elasticsearch" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.url="https://www.elastic.co/products/elasticsearch" \
  org.label-schema.usage="https://www.elastic.co/guide/en/elasticsearch/reference/index.html" \
  org.label-schema.vcs-ref="4f67856884ff580d8b48a858411b8c17cb0f8cdb" \
  org.label-schema.vcs-url="https://github.com/elastic/elasticsearch" \
  org.label-schema.vendor="Elastic" \
  org.label-schema.version="6.8.23" \
  org.opencontainers.image.created="2022-01-06T21:30:50.087716Z" \
  org.opencontainers.image.documentation="https://www.elastic.co/guide/en/elasticsearch/reference/index.html" \
  org.opencontainers.image.licenses="Elastic-License" \
  org.opencontainers.image.revision="4f67856884ff580d8b48a858411b8c17cb0f8cdb" \
  org.opencontainers.image.source="https://github.com/elastic/elasticsearch" \
  org.opencontainers.image.title="Elasticsearch" \
  org.opencontainers.image.url="https://www.elastic.co/products/elasticsearch" \
  org.opencontainers.image.vendor="Elastic" \
  org.opencontainers.image.version="6.8.23"

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Dummy overridable parameter parsed by entrypoint
CMD ["eswrapper"]

################################################################################
# End of multi-stage Dockerfile
################################################################################