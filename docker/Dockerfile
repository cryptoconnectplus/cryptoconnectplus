FROM debian:stretch
LABEL maintainer="CryptoConnectPlus Developers <dev@cryptoconnectplus.org>"
LABEL description="Dockerised CryptoConnectPlusCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
