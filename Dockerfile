FROM openresty/openresty:alpine

COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
COPY src/lua /etc/nginx/conf.d/lua

COPY gzip.conf /etc/nginx/conf.d/gzip.conf
# COPY default.conf /etc/nginx/conf.d/default.conf

