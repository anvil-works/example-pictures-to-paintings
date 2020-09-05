FROM ubuntu:18.04

RUN mkdir /app && apt-get update && apt-get -yy install python3 python3-pip

RUN pip3 install --upgrade pip

COPY requirements.txt /app

RUN pip install -r /app/requirements.txt

COPY neural-style-transfer.py /app/

ENV PYTHONUNBUFFERED=1

CMD python3 /app/neural-style-transfer.py
