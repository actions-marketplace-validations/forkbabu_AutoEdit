FROM ubuntu:18.04
FROM python:3.7

ADD . /app
WORKDIR /app

RUN apt install texlive-latex-base 
RUN apt install texlive-fonts-recommended
RUN apt install texlive-fonts-extra
RUN apt install texlive-latex-extra
RUN pip install pylatex pdflatex

RUN chmod +x /app/main.sh
CMD bash /app/main.sh
