FROM python:2.7-slim-buster

ADD /FeaturesExtraction/featuresExtraction.py /

RUN apt-get update -y
RUN apt-get install curl -y
RUN pip install essentia pika

COPY ./wait-for-rabbit.sh /
RUN chmod +x /wait-for-rabbit.sh

CMD ["/wait-for-rabbit.sh", "python", "featuresExtraction.py"]