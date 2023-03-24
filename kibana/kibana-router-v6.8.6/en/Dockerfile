FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/kibana:6.8.6
RUN rm -rf /usr/share/kibana/node_modules/x-pack
RUN ./bin/kibana-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/zsearch_auth-6.8.6.5.zip

