FROM continuumio/anaconda3:latest

RUN apt-get -y update
RUN apt-get -y install linux-headers-amd64 build-essential libc-dev gcc

RUN conda install --yes gensim
RUN pip install annoy

RUN conda config --add channels conda-forge
RUN conda install -c conda-forge --yes spacy


