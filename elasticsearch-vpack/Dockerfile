FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/elasticsearch:6.8.23
RUN rm -rf /usr/share/elasticsearch/modules/tribe
RUN rm -rf /usr/share/elasticsearch/modules/x-pack-ml

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-nori
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-smartcn
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-stempel
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/a-pack-join-6.8.23.1.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/a-pack-plain-6.8.23.1.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/a-pack-rank-6.8.23.1.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/a-pack-tenant-6.8.23.1.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/a-pack-xdcr-6.8.23.1.zip
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/a-pack-logic-cpu-6.8.23.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/a-pack-repository-oss-6.8.23.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/elasticsearch-analysis-ik-6.8.23.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v6.8.23/elasticsearch-analysis-pinyin-6.8.23.zip --batch

