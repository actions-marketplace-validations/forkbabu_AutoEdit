FROM ubuntu:18.04
ADD . app
WORKDIR app/tests
RUN apt-get update && apt-get install -y \
    texlive-base
CMD sh main.sh
