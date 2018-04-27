FROM ubuntu:16.04

MAINTAINER Toshiaki Inahata <inahata@miharu.co.jp>


#
# Set UP Ubuntu
#
RUN apt-get update && apt-get upgrade -y \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
            git curl wget unzip vim \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*


#
# Set UP Python
ENV PATH $PATH:/root/.pyenv/bin
# RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
# RUN ls /root/.pyenv/bin
# RUN eval "$(pyenv init -)"
RUN apt-get update && apt-get install -y \
            gcc make libssl-dev libbz2-dev libreadline-dev libsqlite3-dev zlib1g-dev \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
RUN curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash \
        && eval "$(pyenv init -)" \
        && eval "$(pyenv virtualenv-init -)" \
        && pyenv update \
        && echo 'eval "$(pyenv init -)"' >> /root/.bashrc \
        && echo 'eval "$(pyenv virtualenv-init -)"' >> /root/.bashrc \
        && pyenv install 3.6.5 \
        && pyenv install 2.7.14 \
        && pyenv global 2.7.14 3.6.5
RUN apt-get update && apt-get install -y \
            graphviz
RUN eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)" \
        && pip install --upgrade pip \
        && pip install awscli
RUN eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)" \
        && pip3 install --upgrade pip \
        && pip3 install Pillow \
        && pip3 install --upgrade tensorflow==1.7.0 \
        && pip3 install keras \
        && pip3 install keras-vis \
        && pip3 install h5py==2.8.0rc1 \
        && pip3 install jupyter \
        && pip3 install pydot graphviz
