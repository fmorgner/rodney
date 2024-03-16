#!/usr/bin/env sh

apk update

apk add --no-cache \
    avr-libc \
    binutils-avr \
    clang17-extra-tools \
    cmake \
    gcc-avr \
    git \
    make \
    openssh

rm -rf /var/cache/apk
