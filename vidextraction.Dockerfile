FROM node:10.16.0

COPY ./VideoExtraction/vidExtrator /vidExtrator

WORKDIR /vidExtrator

RUN npm install

CMD ["node","vidExtractorScript"]
