FROM continuumio/anaconda3:latest

RUN apt-get -y update
RUN apt-get -y install linux-headers-amd64 build-essential libc-dev gcc

RUN conda install --yes gensim
RUN pip install annoy

RUN conda config --add channels conda-forge
RUN conda install -c conda-forge --yes spacy

RUN python -m spacy download en_core_web_sm

RUN conda config --add channels anaconda
RUN conda install -c anaconda --yes graphviz python-graphviz

RUN pip install pytextrank


