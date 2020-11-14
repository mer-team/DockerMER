#FROM python:3.5.2
FROM publysher/alpine-sklearn

RUN apk --no-cache add curl
RUN apk --no-cache add --virtual .builddeps g++ musl-dev curl
RUN pip install Cython
RUN pip install scikit-learn==0.21.2
RUN pip install pika
RUN pip install requests
RUN pip install joblib
RUN apk del .builddeps
RUN rm -rf /root/.cache

ADD /MusicClassification/ /

#RUN pip3 install pika==1.0.1
#RUN pip3 install scikit-learn==0.21.2
#RUN pip3 install requests

COPY ./wait-for-rabbit.sh /
RUN chmod +x ./wait-for-rabbit.sh

CMD ["/wait-for-rabbit.sh", "python", "musicClassificator.py"]