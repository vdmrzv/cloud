FROM nvidia/cuda:9.2-devel-ubuntu18.04

ENV PATH /usr/local/nvidia/bin/:$PATH
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64

USER root

RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install jupyter
RUN pip3 install torch torchvision
RUN pip3 install opencv-python
RUN pip3 install opencv-contrib-python
RUN pip3 install opencv-python-headless
RUN pip3 install Cython
RUN pip3 install pycocotools
RUN pip3 install matplotlib
RUN pip3 install scikit-image
RUN pip3 install tensorboard
RUN pip3 install future
