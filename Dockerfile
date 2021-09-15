ARG CODE_VERSION=16.04

FROM ubuntu:${CODE_VERSION}

RUN apt-get update && apt-get install -y curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /home/Codes

ENV USER neo
ENV SHELL /bin/bash
ENV LOGNAME neo

CMD ["bash"]
