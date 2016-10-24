FROM ubuntu

## Set environment variable
ENV DEBIAN_FRONTEND noninteractive

## Install required development packages


RUN dpkg --add-architecture i386 \
    && apt-get update \
        && apt-get install -y \
        build-essential \
        libc6-i386 \
        wget

WORKDIR ~
RUN  wget https://s3-ap-southeast-1.amazonaws.com/mtk.linkit/LinkIt_SDK_V4.0.0_public.tar.gz \
    && tar -xvf ./LinkIt_SDK_V4.0.0_public.tar.gz