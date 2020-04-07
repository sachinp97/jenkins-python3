FROM jenkins/jenkins:alpine

#### Proxy settings as needed ####
# ENV http_proxy="http://<host>:<port>"
# ENV https_proxy="http://<host>:<port>"
# ENV no_proxy=".xyz.com,.abc.com"
##################################
MAINTAINER Sachin D. Patil <sachin97@hotmail.com>
USER root
RUN apk add python3 && \
    python3 -m ensurepip && \
    if [ -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi
RUN apk add pkgconf
RUN apk add build-base
RUN apk add python3-dev && \
    apk add libffi-dev && \
    apk add openssl-dev
USER jenkins
