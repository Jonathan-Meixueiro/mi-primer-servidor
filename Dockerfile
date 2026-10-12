# Utilizar una imagen ligera de Node.js
FROM node:20-alpine

# Instalar git para clonar el repositorio
RUN apk add --no-cache git

# Solicitar el código del proyecto vía HTTPS
RUN git clone -b main https://gitlab.com/a240694/mi-primer-servidor.git /app || \
    git clone -b main https://github.com/Jonathan-Meixueiro/mi-primer-servidor.git /app || \
    git clone -b main https://jonamx13-admin@bitbucket.org/jonamx13/mi-primer-servidor.git /app

# Establecer el directorio de trabajo donde se descargó el código
WORKDIR /app

# Exponer el puerto que utiliza el servidor Node.js
EXPOSE 3000

# Ejecutar la etapa 4 (Servidor asíncrono) por defecto
CMD ["node", "4-server-async.js"]