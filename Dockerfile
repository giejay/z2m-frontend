FROM node:15.2.0-alpine

RUN mkdir /app 

COPY package.json /app

WORKDIR /app 

RUN npm install 

COPY . /app 

CMD ["npm", "run", "start"]