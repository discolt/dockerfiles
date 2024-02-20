FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/elasticsearch-base:7.17.9

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-rank-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-tenant-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-synonym-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-local-recovery-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-logic-cpu-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-geocn-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/a-pack-repository-oss-7.17.9.1.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/elasticsearch-analysis-ik-7.17.9.zip --batch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/elk/v7.17.9/elasticsearch-analysis-pinyin-7.17.9.zip --batch
