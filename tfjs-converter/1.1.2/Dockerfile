FROM ubuntu:16.04

MAINTAINER Toshiaki Inahata <inahata@miharu.co.jp>


#
# Set UP Ubuntu
#
RUN apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y git curl wget unzip vim \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*


#
# Set UP Python
ENV PATH $PATH:/root/.pyenv/bin
RUN apt-get update \
        && apt-get install -y gcc make libssl-dev libbz2-dev libreadline-dev libsqlite3-dev zlib1g-dev \
        && apt-get install -y graphviz \
        \
        && curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash \
        && eval "$(pyenv init -)" \
        && eval "$(pyenv virtualenv-init -)" \
        && pyenv update \
        && echo 'eval "$(pyenv init -)"' >> /root/.bashrc \
        && echo 'eval "$(pyenv virtualenv-init -)"' >> /root/.bashrc \
        && pyenv install 3.6.8 \
        && pyenv global 3.6.8 \
        \
        && pip install --upgrade pip \
        && pip install tensorflowjs \
        \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
