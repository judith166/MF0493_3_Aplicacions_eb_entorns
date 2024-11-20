# Usar una imagen base
FROM node:23.1-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY package*.json ./

# Instalar dependencias
RUN npm install \
   && npm cache clean --force \
   && rm -rf /tmp/* /root/.npm/_cacache

# Copiar el resto de los archivos
COPY . .

# Exponer el puerto en el que la aplicación se ejecuta
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["npm", "start"]


