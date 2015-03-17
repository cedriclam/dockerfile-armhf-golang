FROM mazzolino/armhf-ubuntu:latest

MAINTAINER Cedric Lamoriniere "cedric.lamoriniere@gmail.com"

# Install Nginx.
RUN \
  apt-get update && \
  apt-get install -y golang 

ENV PATH /usr/src/go/bin:$PATH

RUN mkdir -p /go/src /go/bin && chmod -R 777 /go
ENV GOPATH /go
ENV PATH /go/bin:$PATH
WORKDIR /go

