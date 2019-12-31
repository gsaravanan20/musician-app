FROM node:8.17.0-alpine

WORKDIR /sg/src

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

CMD [ "npm", "start" ]

EXPOSE 3001