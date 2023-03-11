#Se obtiene la imagen Correspondiente (node version 14)
FROM node:19 as desarrollo
#Se crea el espacio de trabajo dentro del contenedor
#RUN mkdir -p /usr/src/evalart-app
WORKDIR /usr/src/test-app

RUN pwd
RUN ls
#Se instalan las dependicias del nodejs utilizando el package.json y el comando npm install
COPY package*.json ./
RUN npm install --only=development

#Se copian los archivos dentro del espacio de trabajo
COPY . .
RUN npm run build
#Ejecuta el servidor
EXPOSE 8080

CMD ["node", "dist/main"]
#CMD ["pwd"]
