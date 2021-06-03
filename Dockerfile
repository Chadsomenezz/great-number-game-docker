FROM node:14.4.0-alpine3.12
WORKDIR /app
COPY package.json /app

RUN npm install
RUN npm install nodemon -g
COPY . /app

CMD ["npm", "start"]