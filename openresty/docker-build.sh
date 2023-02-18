VERSION=6.8.23
IMAGE="registry.cn-shenzhen.aliyuncs.com/elastic-group/openresty"

docker build --no-cache -t ${IMAGE}:${VERSION} .
docker push ${IMAGE}:${VERSION}
