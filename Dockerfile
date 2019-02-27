from ubuntu:19.04

LABEL maintainer="Netscope"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update  \
 && apt-get install -yq --no-install-recommends \
    git \
    python \
    vim \

RUN git clone https://github.com/ethereon/netscope

CMD ["cd netscope && python -m SimpleHTTPServer 6666"]
