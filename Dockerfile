FROM python:3.7

MAINTAINER rajesh.r6r@gmail.com

USER root

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install --upgrade pip

RUN pip3 install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

ADD . /app

ENV NAME streamlitspacy

CMD ["python3"]
