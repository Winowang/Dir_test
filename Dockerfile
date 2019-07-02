# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
#FROM winowang/jupyter_images:jupyter-latest
FROM winowang/jupyter_gpu:cuda9.2-latest
#FROM winowang/dockerfile_test:cuda92-latest

LABEL maintainer="Jupyter Mxnet"

USER root

#RUN conda install --yes \
#    'qt=5.9.*' \
#    'pyqt=5.9.*'

#RUN conda install --quiet --yes mxnet=1.2.1 && \
#    conda remove --quiet --yes --force qt pyqt && \

RUN conda clean -tipsy && \
    #npm cache clean --force && \
    rm -rf $CONDA_DIR/share/jupyter/lab/staging && \
    rm -rf /home/.cache/yarn && \
    rm -rf /home/.node-gyp
    
USER root

RUN conda install --yes \
          'opencv=3.4*' \
          'protobuf' 

#RUN pip install mxnet-cu92
RUN pip install graphviz
RUN pip install numpy
RUN pip install mxnet-cu92mkl
#RUN pip install mxnet

RUN pip install mxboard 

#RUN pip install tensorboardX
#RUN pip install git+https://github.com/lanpa/tensorboardX
