FROM ubuntu:16.10

RUN apt-get update -y && apt-get install -y texlive texlive-latex-extra python-pip imagemagick pkg-config

RUN pip install cython
RUN pip install numpy

COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app

