FROM nginx

MAINTAINER signdigit1<fujunchn@qq.com>

EXPOSE 8080

COPY dist/  /usr/share/nginx/html/