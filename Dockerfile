FROM ubuntu:18.04

RUN set -x && \
    apt-get update && \
    apt-get install -y curl unzip jq less && \
    apt-get clean

RUN set -x && \
    cd /tmp && \
    curl 'https://d1vvhvl2y92vvt.cloudfront.net/awscli-exe-linux-x86_64.zip' -o 'awscli-exe.zip' && \
    unzip awscli-exe.zip && \
    ./aws/install

ENV PATH="${PATH}:/usr/local/bin"
