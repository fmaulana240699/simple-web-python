FROM python:latest

RUN mkdir APP

WORKDIR /APP

ADD app.py .

RUN pip3 install flask

EXPOSE 5555

CMD python ./app.py
