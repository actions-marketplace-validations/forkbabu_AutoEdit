FROM ubuntu:18.04
FROM python:3.6

ADD . /app
WORKDIR /app

RUN pip install pdflatex

RUN chmod +x /app/main.py
CMD python3 /app/main.py
