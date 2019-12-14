FROM python:2.7

ADD /FeaturesExtraction/featuresExtraction.py /

RUN pip install essentia pika

CMD ["python", "./featuresExtraction.py"]