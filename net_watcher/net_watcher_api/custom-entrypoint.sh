#!/bin/sh

# Substituir variables de entorno en la plantilla y generar el archivo final
envsubst '$PORT $SERVER_NAME $BACKEND_HOSTNAME $WEB_SERVER1 $WEB_SERVER2' \
    < /etc/nginx/conf.d/default.conf.template \
    > /etc/nginx/conf.d/default.conf

# Validar configuración de Nginx
if nginx -t; then
    echo "Configuración válida. Iniciando Nginx..."
    nginx -g "daemon off;"
else
    echo "Configuración inválida. Iniciando Nginx en modo básico..."
    # Crear una configuración mínima para mantener el servidor activo
    echo "
    server{
        listen 80;
        server_name localhost;
        location / {
            return 503;
            }
        
        # Manejo de errores
        error_page 503 /error_page.html;
        location = /error_page.html {
            root /usr/share/nginx/html;
            internal;
            }
        }
    " > /etc/nginx/conf.d/default.conf
    nginx -g "daemon off;"
fi