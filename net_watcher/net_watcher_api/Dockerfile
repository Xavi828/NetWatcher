FROM nginx:alpine

# Copiar la configuración personalizada
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Exponer puerto 80 y 443
EXPOSE 80 443

# Utilizar script de entrada para lanzar Nginx
CMD ["nginx", "-g", "daemon off;"]