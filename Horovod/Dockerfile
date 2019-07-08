#FROM uber/horovod:0.15.2-tf1.12.0-torch1.0.0-py3.5
#FROM horovod/horovod:0.16.4-tf1.14.0-torch1.1.0-mxnet1.4.1-py3.6
FROM horovod/horovod:0.16.4-tf1.14.0-torch1.1.0-mxnet1.4.1-py2.7

LABEL maintainer="Jupyter Horovod"

RUN pip install numpy \
                jupyter \
                jupyterlab \
                scipy \
                opencv-python \
                tensorboardX \
                mxboard  \
                matplotlib

RUN mkdir /etc/jupyter/ && wget -P /etc/jupyter/  https://raw.githubusercontent.com/jupyter/docker-stacks/master/base-notebook/jupyter_notebook_config.py
