
FROM andrewosh/binder-base

MAINTAINER Michael A. Buice <mabuice@gmail.com>

USER root


RUN apt-get update
RUN apt-get install -y xvfb

RUN export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0-cp27-none-linux_x86_64.whl
RUN pip install --upgrade $TF_BINARY_URL

USER main