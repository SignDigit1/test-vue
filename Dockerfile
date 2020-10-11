# 编译阶段
FROM node as builder

COPY ./  /test-vue/

WORKDIR /test-vue/

RUN npm install

RUN npm run build

# 运行阶段
FROM nginx

# 运行阶段
COPY --from=builder /test-vue/dist/ /usr/share/nginx/html/

MAINTAINER signdigit1<fujunchn@qq.com>

EXPOSE 8080 80

