# NetWatcher

**NetWatcher** es una plataforma de monitorización y gestión remota (RMM) desarrollada en Dart y Flutter, diseñada para ofrecer supervisión, automatización de tareas y control remoto de dispositivos tanto en Windows como en Linux.

## 🧩 Arquitectura

La estructura del sistema se compone de:

1. **Cliente**  
   Aplicación que se instala en los dispositivos a gestionar. Se conecta al servidor mediante la API, informa del estado del equipo, recibe instrucciones y ejecuta órdenes.

2. **API Gateway**  
   Direcciona el tráfico entre los distintos módulos del sistema:
   - Si es una petición de datos, se redirige al servidor de gestión de base de datos.
   - Si es una solicitud al portal web, se redirige al servidor web correspondiente.

3. **Servidores principales**
   - **WEB GW.**: Balanceador de carga entre los servidores web.
   - **BD MNG.**: Procesa las solicitudes de los clientes, ejecuta acciones programadas y gestiona el envío de datos a las bases de datos.

4. **Servidores web**
   Dos servidores que sirven la interfaz del portal desarrollada en Flutter Web.

5. **Bases de datos**
   Dos servidores PostgreSQL configurados en réplica para garantizar redundancia y disponibilidad de los datos.

## 💻 Plataforma soportada

- Cliente y servidor diseñados para Windows y Linux.

## 🔐 Seguridad

- Acceso al portal mediante autenticación de usuario.
- El cliente requiere contraseña para registrarse en el servidor.
- Comunicación segura prevista mediante HTTPS y autenticación con tokens (en desarrollo).

## ⚙️ Instalación

- **Servidor**: Se desplegará automáticamente mediante scripts o contenedores.
- **Cliente**: Instalación manual independiente.

## 📟 Interacción

- Interfaz principal: Portal web.
- Interfaces adicionales (en desarrollo): Línea de comandos (CLI) para cliente y servidor.

## 🚧 Estado

Actualmente en **fase beta**.

## 📄 Licencia

Este software es propiedad del autor. No está permitido copiar, distribuir, modificar ni utilizar ninguna parte de este código sin autorización expresa. Todos los derechos reservados.

