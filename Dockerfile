FROM ubuntu:18.04
MAINTAINER Farhan Patwa <farhan.patwa@utsa.edu>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
        software-properties-common && \
    apt-get -qq autoremove -y --purge && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

RUN apt-add-repository -yu ppa:maas/2.8 && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install \
        maas jq bsdmainutils && \
    apt-get -qq autoremove -y --purge && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

WORKDIR /
