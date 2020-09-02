FROM ubuntu:18.04
FROM python:3.7

ADD . /app
WORKDIR /app

RUN sudo apt-get install texlive-latex-base 
RUN sudo apt-get install texlive-fonts-recommended
RUN sudo apt-get install texlive-fonts-extra
RUN sudo apt-get install texlive-latex-extra
RUN pip install pylatex pdflatex

RUN chmod +x /app/main.py
CMD python3 /app/main.py
