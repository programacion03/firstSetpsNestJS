# Usa una imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia el package.json y el package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias
RUN npm install --production

# Copia el resto del código de tu aplicación al contenedor
COPY . .

# Expone el puerto (opcional, si tu bot utiliza algún servidor HTTP)
# EXPOSE 3000

# Comando para iniciar tu bot de Telegram
CMD ["node", "server.js"]
