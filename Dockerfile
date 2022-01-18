FROM nginx

MAINTAINER Yakhub

RUN apt-get update && apt-get install curl -y

RUN mkdir dummydir

COPY samplefile /dummydir

ADD demo.tar.gz /dummydir

VOLUME ["/Volume1"]

WORKDIR dummydir

ARG value=80

EXPOSE ${value}

ENV USER=dummyuser
