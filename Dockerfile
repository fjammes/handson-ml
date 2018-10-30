FROM debian:stretch

RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y upgrade && \
    apt-get -y clean

RUN apt-get -y install python3-pip vim

ADD handson-ml /handson-ml
RUN pip3 install --upgrade -r /handson-ml/requirements.txt 
RUN jupyter contrib nbextension install
RUN jupyter nbextension enable toc2/main


RUN useradd -ms /bin/bash ml
USER ml
