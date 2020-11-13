FROM node:10.16.0

COPY ./VideoExtraction/vidExtrator /vidExtrator

WORKDIR /vidExtrator

RUN npm install

COPY ./wait-for-it.sh /
RUN chmod +x /wait-for-it.sh

#CMD ["node","vidExtractorScript"]
CMD /wait-for-it.sh rabbit:5672 -- node vidExtractorScript