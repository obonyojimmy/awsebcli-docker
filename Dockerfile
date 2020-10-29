FROM alpine:latest

RUN apk add --no-cache --virtual \
        python3 \
        python3-dev \
        py-pip \
        groff \
        less \
        git \
        build-base \
        gcc \
        libffi-dev \
        openssl-dev \
        bash \
        && ln -sf python3 /usr/bin/python \
        && pip3 install --no-cache --quiet --upgrade pip setuptools wheel \
        && pip install --quiet --upgrade awsebcli

ENTRYPOINT [ "eb" ]