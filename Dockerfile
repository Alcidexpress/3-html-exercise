# Usar la imagen oficial de Node.js como base
FROM node:16

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar el resto de la aplicación
COPY . .

# Construir la aplicación React para producción
RUN npm run build

# Exponer el puerto en el que la app React se ejecutará
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]
