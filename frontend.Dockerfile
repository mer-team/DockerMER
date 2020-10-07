FROM node:12-alpine

COPY ./merWeb /merWeb

WORKDIR /merWeb

RUN npm install

CMD [ "npm", "start" ]

EXPOSE 3000