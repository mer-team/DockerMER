FROM python:3.5.2

ADD /MusicClassification/ /

RUN pip3 install pika==1.0.1
RUN pip3 install scikit-learn==0.21.2
RUN pip3 install requests

COPY ./wait-for-it.sh /
RUN chmod +x ./wait-for-it.sh

#CMD ["python3", "./musicClassificator.py"]
CMD ./wait-for-it.sh rabbit:5672 -- python ./musicClassificator.py