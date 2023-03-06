FROM node:alpine

ADD . .

WORKDIR /vdir

EXPOSE 5000

RUN npm install

CMD {"npm", "start"}