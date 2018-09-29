from winowang/tensorflow:cuda92-simple

ARG ALLUXIO_TARBALL=http://downloads.alluxio.org/downloads/files/1.8.0/alluxio-1.8.0-bin.tar.gz
ENV ENABLE_FUSE true

RUN apt-get update && apt-get install -y --no-install-recommends software-properties-common && \
    add-apt-repository -y ppa:openjdk-r/ppa && \
	apt-get update && \
	apt-get install -y --no-install-recommends \
	openjdk-8-jdk openjdk-8-jre-headless libfuse-dev && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN mkdir -p /alluxio-fuse

ADD ${ALLUXIO_TARBALL} /opt/

# if the tarball was remote, it needs to be untarred
RUN cd /opt && \
    (if ls | grep -q ".tar.gz"; then tar -xzf *.tar.gz && rm *.tar.gz; fi) && \
    mv alluxio-* alluxio


#COPY conf /opt/alluxio/conf/
#COPY entrypoint.sh /

#ENTRYPOINT ["/entrypoint.sh"]
