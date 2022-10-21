FROM ubuntu:latest

WORKDIR ./my_docker

RUN apt-get update
RUN apt-get -y install apt-utils
RUN DEBIAN_FRONTEND=noninteractive DEBCONF_NOWARNINGS=yes apt-get -y install build-essential

#RUN apt-get -y install apt-utils

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vim

#RUN apt-get -y install build-essential

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y bc

COPY scripts .

RUN ./ird.sh ./

RUN ./reversenumber.sh 517

RUN ./filenames.sh ./

RUN ./countlines.sh ird.sh

