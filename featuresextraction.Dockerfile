#FROM python:2.7
FROM mtgupf/essentia:latest

RUN apt-get install curl

ADD /FeaturesExtraction/featuresExtraction.py /

RUN pip install essentia pika

COPY ./wait-for-rabbit.sh /
RUN chmod +x ./wait-for-rabbit.sh

CMD ["/wait-for-rabbit.sh", "python", "featuresExtraction.py"]