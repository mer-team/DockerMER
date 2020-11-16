FROM python:3.6.12-slim-buster

ADD /MusicClassification/ /

RUN apt-get update -y
RUN apt-get install curl -y
RUN pip3 install pika==1.0.1
RUN pip3 install scikit-learn==0.21.2
RUN pip3 install requests

COPY /wait-for-rabbit.sh /
RUN chmod +x /wait-for-rabbit.sh

CMD ["/wait-for-rabbit.sh", "python", "musicClassificator.py"]