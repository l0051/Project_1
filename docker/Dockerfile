FROM ubuntu:latest

WORKDIR /Desktop/www/project_1

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive DEBCONF_NOWARNINGS=yes apt-get -y install vim

RUN DEBIAN_FRONTEND=noninteractive DEBCONF_NOWARNINGS=yes apt-get -y install build-essential

COPY scripts .

RUN ./scripts/ird .

RUN ./scripts/reversenumber.sh 517

RUN ./scripts/filenames.sh .

RUN ./scripts/countlines.sh ird.sh

