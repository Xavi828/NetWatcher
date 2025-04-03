# Usamos una imagen base oficial de NGINX
FROM nginx:alpine

# Eliminamos el contenido por defecto del directorio html
RUN rm -rf /usr/share/nginx/html/*

# Copiamos los archivos estáticos generados por Flutter Web al contenedor
COPY web /usr/share/nginx/html

# Copiar configuración personalizada de NGINX
COPY nginx.conf /etc/nginx/nginx.confi

# Expone el puerto por defecto de NGINX
EXPOSE 80

# Inicia NGINX en modo foreground
CMD ["nginx", "-g", "daemon off;"]
