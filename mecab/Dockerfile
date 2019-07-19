FROM buildpack-deps:stretch-scm

LABEL  maintainer "Toshiaki Inahata <inahata@miharu.co.jp>"


RUN set -x \
        && apt-get update \
        && apt-get upgrade -y \
        && apt-get install -y mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file \
        && apt-get install -y sudo patch \
        && apt-get clean \
        && rm -rf /var/lib/apt/lists/* \
        \
        \
        && git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git mecab-ipadic-neologd \
        && mkdir /usr/lib/mecab/dic \
        && cd mecab-ipadic-neologd && ./bin/install-mecab-ipadic-neologd -n -a -y \
        && cd ../ && rm -rf mecab-ipadic-neologd


ENTRYPOINT ["mecab", "-d", "/usr/lib/x86_64-linux-gnu/mecab/dic/mecab-ipadic-neologd"]
