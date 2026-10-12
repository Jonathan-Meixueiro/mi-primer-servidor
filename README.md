# Práctica: Mi primer servidor

Consta de diferentes implementaciones de un servidor en Node.js, uno básico por HTTP y terminando con uno síncrono y asíncrono.

## ⚠️ Requisitos previos
* **Docker Desktop:** Debe estar instalado y ejecutándose en tu computadora (espera a que el indicador del motor esté en verde).
* **Git:** Necesario si deseas descargar el código fuente localmente.

## ¿Cómo obtener el proyecto localmente?
Si deseas descargar el código fuente a tu computadora para revisarlo:
1. Abre tu terminal.
2. Ejecuta el comando para clonar el repositorio:
   git clone https://github.com/Jonathan-Meixueiro/mi-primer-servidor.git
3. Entra a la carpeta del proyecto:
   cd mi-primer-servidor

## ¿Cómo construir la imagen de Docker?
El proyecto utiliza un archivo `Dockerfile` que se conecta a internet para descargar la última versión del código directamente desde el repositorio y empaquetarla.
1. Abre tu terminal.
2. Ejecuta el comando de construcción:
   docker build --no-cache -t mi-primer-servidor .

## Comprobación por Etapas (Instrucciones de Ejecución)

**⚠️ Importante:** Antes de ejecutar una siguiente etapa, DEBES detener la anterior. 
Así que no basta con presionar `Ctrl + C`, si no que habrá que eliminar el contenedor que se haya creado desde Docker

### Etapa 1: Hola mundo básico en consola
Ejecuta un script simple que imprime un mensaje en la terminal y se cierra automáticamente. No usa puertos de red.
```bash
  docker run --rm mi-primer-servidor node 1-hola-mundo.js
  ```

### Etapa 2: Servidor HTTP simple (Texto plano)
Levanta un servidor básico en el puerto 3000 que responde con texto.
```bash
  docker run --rm -it -p 3000:3000 mi-primer-servidor node 2-server-http.js
```
- Prueba: Abre tu navegador web en http://localhost:3000
- Limpieza: Regresa a la terminal y presiona `Ctrl + C`.

### Etapa 3: Servidor Síncrono (Archivo HTML)
Levanta un servidor que lee y envía el archivo `index.html` bloqueando el hilo principal.
```bash
  docker run --rm -it -p 3000:3000 mi-primer-servidor node 3-server-sync.js
```
- Prueba: Abre tu navegador web en http://localhost:3000
- Limpieza: Regresa a la terminal y presiona `Ctrl + C`.

### Etapa 4: Servidor Asíncrono (Final)
Es la versión final del servidor que sirve el archivo `index.html` sin bloquear el hilo principal. Al ser la versión final solicitada, está configurada por defecto en el contenedor.
```bash
  docker run --rm -it -p 3000:3000 mi-primer-servidor
```
- Prueba: Abre tu navegador web en http://localhost:3000
- Limpieza: Regresa a la terminal y presiona `Ctrl + C`.

---