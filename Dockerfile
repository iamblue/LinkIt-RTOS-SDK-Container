FROM ubuntu

USER root

## Set environment variable
ENV DEBIAN_FRONTEND noninteractive

## Install required development packages
RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y \
    build-essential \
    libc6-i386 \
    wget

RUN mkdir -p $HOME/LinkIt_SDK_V4.0.0_public
RUN wget https://s3-ap-southeast-1.amazonaws.com/mtk.linkit/LinkIt_SDK_V4.0.0_public.tar.gz && \
  tar -xvf $HOME/LinkIt_SDK_V4.0.0_public.tar.gz -C $HOME/LinkIt_SDK_V4.0.0_public

WORKDIR $HOME/LinkIt_SDK_V4.0.0_public
