FROM openjdk:8-jdk-alpine

ARG ALLUXIO_TARBALL=http://downloads.alluxio.org/downloads/files/1.8.0/alluxio-1.8.0-bin.tar.gz

RUN apk add --update bash && \
    rm -rf /var/cache/apk/*

ADD ${ALLUXIO_TARBALL} /opt/

# if the tarball was remote, it needs to be untarred
# use ln -s instead of mv to avoid issues with Centos (see https://github.com/moby/moby/issues/27358)
RUN cd /opt && \
    (if ls | grep -q ".tar.gz"; then tar -xzf *.tar.gz && rm *.tar.gz; fi) && \
    ln -s alluxio-* alluxio
USER root

COPY conf /opt/alluxio/conf/
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
