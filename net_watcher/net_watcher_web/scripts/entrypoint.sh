#!/bin/sh
# Reemplaza variables en el template y lanza nginx
envsubst '$SERVER_NAME $PORT $ROOT_DIR' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
exec nginx -g 'daemon off;'