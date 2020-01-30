FROM ubuntu:18.04

LABEL maintainer "Toshiaki Inahata <inahata@miharu.co.jp>"


#
# SetUP Japanese
# ==============================================================================
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


#
# SetUP Java
# ==============================================================================
RUN set -x \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y openjdk-8-jre openjdk-8-jdk \
        \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        && java -version
