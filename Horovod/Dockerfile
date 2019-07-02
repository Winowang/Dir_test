FROM uber/horovod:0.15.2-tf1.12.0-torch1.0.0-py3.5

LABEL maintainer="Jupyter Tensorflow"

RUN mkdir /etc/jupyter/
RUN wget -P /etc/jupyter/  https://raw.githubusercontent.com/jupyter/docker-stacks/master/base-notebook/jupyter_notebook_config.py

RUN pip install mxnet-cu90mkl
RUN pip install numpy
RUN pip install jupyter
