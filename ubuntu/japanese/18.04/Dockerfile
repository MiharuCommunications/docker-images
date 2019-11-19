FROM ubuntu:18.04


RUN set -x \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y language-pack-ja \
        && locale-gen ja_JP.UTF-8 \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/*

ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
