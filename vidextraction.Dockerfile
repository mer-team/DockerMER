FROM node:10-alpine

# install curl
RUN apk --no-cache add curl

COPY ./VideoExtraction/vidExtrator /vidExtrator

WORKDIR /vidExtrator

RUN npm install

COPY ./wait-for-rabbit.sh /
RUN chmod +x /wait-for-rabbit.sh

CMD ["/wait-for-rabbit.sh", "node", "vidExtractorScript"]