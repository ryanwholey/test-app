FROM node:12

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . ./

CMD ["node", "app/server.js"]

EXPOSE 3000
