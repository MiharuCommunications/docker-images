# TensorFlow on Ubuntu



## Try pyenv

```
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
# RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
# ENV PATH $PATH:/root/.pyenv/bin
# RUN eval "$(pyenv init -)"
# RUN eval "$(pyenv virtualenv-init -)"
# RUN pyenv install 3.6.5
# RUN pyenv global 3.6.5


RUN apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev
RUN git clone https://github.com/pyenv/pyenv.git /root/.pyenv
ENV PYENV_ROOT /root/.pyenv
ENV PATH $PATH:/root/.pyenv/bin
RUN echo 'eval \"$(pyenv init -)\"' >> /root/.bashrc
RUN eval "$(pyenv init -)"
RUN pyenv install 3.6.5
RUN pyenv global 3.6.5
RUN pyenv global
RUN pyenv versions
RUN ls /root/.pyenv/versions/3.6.5/bin/
RUN /root/.pyenv/versions/3.6.5/bin/python --version
RUN /root/.pyenv/versions/3.6.5/bin/pip --version

# RUN apt-get install software-properties-common -y
# RUN add-apt-repository ppa:deadsnakes/ppa
# RUN apt-get update
# RUN apt-get install python3.6 -y
# RUN python3.6 --version

#
# Install pip
#
# RUN apt-get install -y python-pip
# RUN pip install --upgrade pip
# RUN pip --version

#
# Install pip
#
# RUN pip install --upgrade pip


#
# Install Libraries
#
# RUN pip install Pillow
# RUN pip install --upgrade ${TF_BINARY_URL}
RUN /root/.pyenv/versions/3.6.5/bin/pip install Pillow
RUN /root/.pyenv/versions/3.6.5/bin/pip install --upgrade ${TF_BINARY_URL}

#
# Install OpenCV
#
RUN apt-get install -y python-opencv
RUN echo 'ln /dev/null /dev/raw1394' >> ~/.bashrc
# RUN sudo ln /dev/null /dev/raw1394
```
