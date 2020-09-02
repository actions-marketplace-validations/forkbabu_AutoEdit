FROM ubuntu:18.04
FROM python:3.7

ADD . /app
WORKDIR /app/tests

RUN pip install python_latex
CMD python_latex
