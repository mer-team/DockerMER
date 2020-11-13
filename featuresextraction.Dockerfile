FROM python:2.7

ADD /FeaturesExtraction/featuresExtraction.py /

RUN pip install essentia pika

COPY ./wait-for-it.sh /
RUN chmod +x ./wait-for-it.sh

#CMD ["python", "./featuresExtraction.py"]
CMD ./wait-for-it.sh rabbit:5672 -- python ./featuresExtraction.py