FROM uber/horovod:0.15.2-tf1.12.0-torch1.0.0-py3.5

LABEL maintainer="Jupyter Tensorflow"


RUN python -m pip install --upgrade pip
RUN pip install mxnet-cu90mkl
RUN pip install numpy
RUN python -m pip install jupyter
