#!/bin/bash -ilex

git pull origin master

yarn --registry=https://registry.npm.taobao.org/ && yarn build

#删除容器
docker rm -f demo1 &> /dev/null

echo $PWD

docker build -t demo1 --no-cache .

#启动容器
docker run -d --restart=on-failure:5\
    -p 8080:80 \
    --name demo1 demo1