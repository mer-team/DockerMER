FROM node:12-alpine

COPY ./merApi /merApi

WORKDIR /merApi

RUN npm install

CMD [ "npm", "start" ]

EXPOSE 8000