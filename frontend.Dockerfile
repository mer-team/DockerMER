FROM node:12-alpine

ARG URL_API

COPY ./merWeb /merWeb

WORKDIR /merWeb

RUN sed -i '/REACT_APP_URL_API=/c\REACT_APP_URL_API='$URL_API .env

RUN npm install

CMD [ "npm", "start" ]

EXPOSE 3000