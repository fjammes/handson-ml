FROM debian:stretch

RUN apt-get -y update && \
    apt-get -y install apt-utils && \
    apt-get -y upgrade && \
    apt-get -y clean

RUN apt-get -y install python3-pip vim

ADD handson-ml /handson-ml

RUN useradd -ms /bin/bash ml
USER ml
RUN pip3 install --user --upgrade -r /handson-ml/requirements.txt 
