FROM python:3.7

MAINTAINER rajesh.r6r@gmail.com

USER root

WORKDIR /app

ADD . /app

RUN pip3 install --upgrade pip

RUN pip3 install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

ENV NAME streamlitspacy

CMD ["python3"]
