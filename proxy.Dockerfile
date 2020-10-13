FROM node:12-alpine

COPY ./proxy /proxy

WORKDIR /proxy

RUN npm install

CMD [ "npm", "start" ]

EXPOSE 3000