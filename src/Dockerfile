FROM alpine:3.13

MAINTAINER Krishna Maram

ENV TERRAFORM_VERSION=0.14.6

RUN apk update && \
    apk add curl jq python3 bash ca-certificates git openssl unzip wget && \
    cd /tmp && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/tmp/*
    
ADD . /mesos-terraform

<<<<<<< HEAD
WORKDIR /mesos-terraform
=======
WORKDIR /mesos-terraform/providers/aws
>>>>>>> a5f3def2f87a9a810dfc7b22e3df5cb3a19822db

ENTRYPOINT ["python3", "./entrypoint.py"]
