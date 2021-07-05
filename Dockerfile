from python:slim-buster

RUN mkdir APP

WORKDIR APP

RUN git clone https://github.com/fmaulana240699/simple-web-python.git && \
cd simple-web-python && \
pip3 install flask

EXPOSE 5555

CMD python ./simple-web-python/app.py
