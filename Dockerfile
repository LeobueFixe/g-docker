FROM nginx:alpine

COPY .config /etc/nginx/conf.d/default.conf
COPY src /usr/share/nginx/html

EXPOSE 80
