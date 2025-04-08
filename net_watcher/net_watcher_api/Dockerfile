FROM nginx:alpine

# Copiar la configuración personalizada
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf.template /etc/nginx/conf.d/default.conf.template

RUN apk add --no-cache gettext

ENV PORT=80 \
    SERVER_NAME=api.netwatcher.com \
    BACKEND_HOSTNAME=servidor_backend \
    WEB_SERVER1=web.netwatcher.local \
    WEB_SERVER2=web2.netwatcher.local

# Exponer puerto 80 y 443
EXPOSE 80 443

# Utilizar script de entrada para lanzar Nginx
CMD envsubst '$PORT $SERVER_NAME $BACKEND_HOSTNAME $WEB_SERVER1 $WEB_SERVER2' \
    < /etc/nginx/conf.d/default.conf.template \
    > /etc/nginx/conf.d/default.conf &&\
    nginx -g 'daemon off;'