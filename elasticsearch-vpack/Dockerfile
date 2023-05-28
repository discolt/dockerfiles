FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/elasticsearch:7.17.9
RUN rm -rf /usr/share/elasticsearch/modules/tribe
RUN rm -rf /usr/share/elasticsearch/modules/x-pack-ml

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-smartcn
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install mapper-annotated-text
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install mapper-size

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-rank-7.17.9.1.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-tenant-7.17.9.1.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-logic-cpu-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/elasticsearch-analysis-ik-7.17.9.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/elasticsearch-analysis-pinyin-7.17.9.zip --batch