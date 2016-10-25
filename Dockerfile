FROM ubuntu

USER root

## Set environment variable
ENV DEBIAN_FRONTEND noninteractive
ENV SDK_VERSION V4.0.0

## Install required development packages
RUN dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y \
    build-essential \
    libc6-i386 \
    wget

RUN mkdir -p $HOME/LinkIt_SDK_${SDK_VERSION}_public
RUN wget https://s3-ap-southeast-1.amazonaws.com/mtk.linkit/LinkIt_SDK_${SDK_VERSION}_public.tar.gz \
  -O /tmp/LinkIt_SDK_${SDK_VERSION}_public.tar.gz && \
  tar -xvf /tmp/LinkIt_SDK_${SDK_VERSION}_public.tar.gz -C $HOME/LinkIt_SDK_${SDK_VERSION}_public

WORKDIR ~/LinkIt_SDK_${SDK_VERSION}_public

CMD ["/bin/bash"]
