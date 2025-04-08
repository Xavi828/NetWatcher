# Usamos una imagen base oficial de NGINX
FROM nginx:alpine

# Eliminamos el contenido por defecto del directorio html
RUN rm -rf /usr/share/nginx/html/*

# Copiamos los archivos estáticos generados por Flutter Web al contenedor
COPY web /usr/share/nginx/html

# Copiar configuración personalizada de NGINX
COPY nginx.conf.template /etc/nginx/nginx.conf.template

RUN apk add --no-cache gettext

ENV SERVER_NAME=web.netwatcher.local \
    PORT=80 \
    ROOT_DIR=/usr/share/nginx/html

# Inicia NGINX en modo foreground
CMD envsubst '$SERVER_NAME $PORT $ROOT_DIR' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && \
    nginx -g 'daemon off;'