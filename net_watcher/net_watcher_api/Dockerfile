FROM nginx:alpine

# Copiar la configuración personalizada
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY ./custom-entrypoint.sh /custom-entrypoint.sh
COPY error_page.html /usr/share/nginx/html/error_page.html

RUN apk add --no-cache gettext
RUN chmod +x /custom-entrypoint.sh
RUN chmod 644 /usr/share/nginx/html/error_page.html

# Exponer puerto 80 y 443<
EXPOSE 80 443

# Utilizar script de entrada para lanzar Nginx
ENTRYPOINT ["/custom-entrypoint.sh"]