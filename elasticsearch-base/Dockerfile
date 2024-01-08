FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/elasticsearch:7.17.9
RUN rm -rf /usr/share/elasticsearch/modules/tribe
RUN rm -rf /usr/share/elasticsearch/modules/x-pack-ml

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install mapper-annotated-text
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install mapper-size