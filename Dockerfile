FROM debian:jessie
MAINTAINER Henric Lindén <henric.linden@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    bash \
    bc \
    binutils \
    build-essential \
    bzip2 \
    cpio \
    g++ \
    gcc \
    git \
    gzip \
    libncurses5-dev \
    locales \
    make \
    mercurial \
    whois \
    patch \
    perl \
    python \
    rsync \
    sed \
    tar \
    unzip \
    wget

RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8

ENV LC_ALL C.UTF-8

WORKDIR /root/buildroot

RUN git clone git://git.buildroot.net/buildroot --depth=1 /root/buildroot

RUN ["/bin/bash"]
