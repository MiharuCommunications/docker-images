FROM miharu/ubuntu-japanese:18.04


RUN set -x \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y git curl wget unzip vim \
        && wget https://dl.google.com/go/go1.12.13.linux-amd64.tar.gz \
        && tar -C /usr/local -xzf go1.12.13.linux-amd64.tar.gz \
        && rm go1.12.13.linux-amd64.tar.gz \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

ENV PATH $PATH:/usr/local/go/bin
ENV GO111MODULE=on


RUN set -x \
        && apt-get update \
        && apt-get install -y python-pip python-dev \
        && pip install awscli \
        \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*
