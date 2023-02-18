IMAGE="registry.cn-shenzhen.aliyuncs.com/elastic-group/grafana8:fixed"

docker build --no-cache -t ${IMAGE} .
docker push ${IMAGE}
