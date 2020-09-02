FROM ubuntu:18.04
FROM python:3.7

ADD . /app
WORKDIR /app/tests


RUN chmod +x /app/main.sh
CMD sh /app/main.sh
