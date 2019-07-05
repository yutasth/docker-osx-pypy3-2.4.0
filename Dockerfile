FROM buildpack-deps:jessie

RUN apt-get purge -y python.*

ENV LANG C.UTF-8

ENV PYPY_VERSION 2.4.0

RUN set -x && curl -SL "https://bitbucket.org/pypy/pypy/downloads/pypy3-${PYPY_VERSION}-linux64.tar.bz2" | tar -xjC /usr/local --strip-components=1
