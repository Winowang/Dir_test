FROM ubuntu:xenial

# http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/
# RUN export uid=1000 gid=1000 && \
RUN    mkdir -p /home/developer
    #echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    #echo "developer:x:${uid}:" >> /etc/group && \
    #mkdir -p /etc/sudoers.d && \
    #echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    #chmod 0440 /etc/sudoers.d/developer && \
    #chown ${uid}:${gid} -R /home/developer

RUN \
  apt-get update -qq && \
  apt-get upgrade -qq -y && \
  apt-get install -qq -y \
    git \
    python3 \
    python3-pip

RUN \
  apt-get install -qq -y \
    python3-matplotlib \
    python3-pyqt5

RUN pip3 install -v git+https://github.com/wkentaro/labelme.git

# USER developer
ENV HOME /home/developer
