FROM ubuntu:19.04

LABEL maintainer="Netscope"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update  \
 && apt-get install -yq --no-install-recommends \
    git \
    python \
    vim

RUN export GIT_SSL_NO_VERIFY=1
RUN git config --global http.sslverify false

RUN git clone https://github.com/ethereon/netscope
#CMD ["cd netscope && python -m SimpleHTTPServer 6666"]
