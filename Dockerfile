FROM node:16
# Creamos una carpeta donde se ejecutara nuestra app
WORKDIR /SERVER
# Pasar los archivos dependecias a la carpeta de la app 
COPY  package.json ./
COPY package-lock.json ./
COPY yarn.lock ./
# Instalamos los paquetes y se crea la carpeta node_modules
RUN npm install


COPY . .

CMD ["npm", "start"]