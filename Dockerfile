FROM node:10.15.3

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . ./

CMD ["node", "app/server.js"]

EXPOSE 3000
