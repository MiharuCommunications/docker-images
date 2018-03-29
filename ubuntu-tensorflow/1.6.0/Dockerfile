FROM ubuntu:16.04

MAINTAINER Toshiaki Inahata <inahata@miharu.co.jp>

# TensorFlow Binary URL
ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.6.0-cp36-cp36m-linux_x86_64.whl

#
# Set UP Ubuntu
#
RUN apt-get update && apt-get upgrade -y && apt-get install -y git curl wget unzip vim

#
# Install Pyenv
#
RUN git clone https://github.com/pyenv/pyenv.git /root/.pyenv
ENV PYENV_ROOT /root/.pyenv
ENV PATH $PATH:/root/.pyenv/bin
RUN echo 'eval \"$(pyenv init -)\"' >> /root/.bashrc
RUN eval "$(pyenv init -)"
RUN pyenv install 3.6.5
RUN pyenv global 3.6.5


#
# Install pip
#
RUN pip install --upgrade pip


#
# Install Libraries
#
RUN pip install Pillow
RUN pip install --upgrade ${TF_BINARY_URL}

#
# Install OpenCV
#
RUN apt-get install -y python-opencv
RUN echo 'ln /dev/null /dev/raw1394' >> ~/.bashrc
# RUN sudo ln /dev/null /dev/raw1394
