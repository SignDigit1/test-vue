###
 # @Author: jun.fu
 # @LastEditors: jun.fu
 # @Description: docker自动编译部署
 # @Date: 2020-09-06 15:04:14
 # @LastEditTime: 2020-09-06 15:39:19
 # @FilePath: \test-vue\start.sh
###
#!/bin/bash -ilex
git pull origin master

yarn --registry=https://registry.npm.taobao.org/ && yarn build

#删除容器
docker rm -f demo1 &> /dev/null

#启动容器
docker run -d --restart=on-failure:5\
    -p 8080:80 \
    -v $PWD/dist:/usr/share/nginx/html \
    --name demo1 nginx