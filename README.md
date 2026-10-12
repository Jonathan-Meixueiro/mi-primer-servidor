# Práctica: Mi primer servidor

Consta de diferentes implementaciones de un servidor en Node.js, uno básico por HTTP y terminando con uno síncrono y asíncrono.

## ⚠️ Requisitos previos
Para que este proyecto funcione, **es obligatorio tener Docker instalado y ejecutándose** en tu computadora. 
Asegúrate de abrir la aplicación **Docker Desktop** y esperar a que el motor indique que está activo antes de ejecutar los comandos en la terminal.

## ¿Cómo funciona la construcción (Dockerfile)?
El proyecto utiliza un Dockerfile que no requiere los archivos locales de tu computadora. En su lugar:
1. Se conecta a internet utilizando una imagen ligera de Node.js basada en Alpine Linux.
2. Descarga el código fuente de esta práctica directamente desde el repositorio remoto (GitHub, GitLab o Bitbucket) vía HTTPS utilizando Git.
3. Expone el puerto 3000 y ejecuta el archivo `4-server-async.js` para levantar el servidor asíncrono.

## Instrucciones de uso

### 1. Construir la imagen
Para descargar el código desde el repositorio y construir la imagen de Docker, abre tu terminal y ejecuta el siguiente comando:

```bash
docker build -t mi-primer-servidor .
```

### 2. Ejecutar el proyecto
Una vez que la construcción termine con éxito, ejecuta el contenedor mapeando el puerto 3000 de tu computadora al puerto 3000 del contenedor:

docker run --rm -p 3000:3000 reto-nodejs

(El parámetro `--rm` sirve para que el contenedor se destruya y limpie automáticamente en cuanto lo detengas).

### 3. Comprobar el funcionamiento
Abre tu navegador web y visita la siguiente dirección:
```bash
http://localhost:3000
```

Si todo es correcto, verás la página web renderizada con el mensaje: "¡Hola mundo desde un archivo HTML!".