FROM registry.cn-shenzhen.aliyuncs.com/elastic-group/kibana:6.8.23
RUN rm -rf /usr/share/kibana/node_modules/x-pack
ADD zh-CN.json /usr/share/kibana/src/legacy/core_plugins/kibana/translations/zh-CN.json
RUN ./bin/kibana-plugin install https://ebase.oss-cn-shanghai.aliyuncs.com/release/router-auth-v6.8.23.zip

