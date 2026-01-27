FROM nginx:alpine

COPY .config /etc/nginx/conf.d/default.conf

COPY cert.crt /etc/nginx/certs/cert.crt
COPY cert.key /etc/nginx/certs/cert.key

COPY src /usr/share/nginx/html

EXPOSE 80 443
