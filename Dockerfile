FROM ubuntu:18.04
FROM python:3.7

ADD . /app
WORKDIR /app

RUN apt-get install texlive-pictures texlive-science texlive-latex-extra latexmk texlive-core texlive-latex-base
RUN pip install pylatex pdflatex

RUN chmod +x /app/main.py
CMD python3 /app/main.py
