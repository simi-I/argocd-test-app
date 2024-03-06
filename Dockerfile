FROM node:18-alpine3.17

WORKDIR /usr/app

COPY package*.json /usr/app/

RUN npm install

COPY . .

ENV MONGO_URI='mongodb+srv://simiobaado:<password>@cluster0.fnyxjc5.mongodb.net/'
ENV MONGO_USERNAME='simiobaado'
ENV MONGO_PASSWORD='6Xv56fFyBvswMB6j'

EXPOSE 3000

CMD [ "npm", "start" ]