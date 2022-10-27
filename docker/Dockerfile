FROM ubuntu:latest


RUN apt-get update
RUN apt-get -y install apt-utils
RUN DEBIAN_FRONTEND=noninteractive DEBCONF_NOWARNINGS=yes apt-get -y install build-essential

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install vim

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y bc

COPY scripts /scripts

RUN ./scripts/ird.sh ./

RUN ./scripts/reversenumber.sh 517

RUN ./scripts/filenames.sh ./

RUN ./scripts/countlines.sh ird.sh

