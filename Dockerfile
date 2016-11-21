FROM ubuntu:16.04
ARG RANCHER_VERSION=v0.3.1

RUN apt-get update && apt-get install -y ca-certificates

# RANCHER
RUN mkdir /opt/rancher/
ADD https://github.com/rancher/cli/releases/download/${RANCHER_VERSION}/rancher-linux-amd64-${RANCHER_VERSION}.tar.gz /usr/share/rancher-linux.tar.gz
RUN tar xvf /usr/share/rancher-linux.tar.gz --strip 2 -C /opt/rancher/
RUN chmod +x /opt/rancher/rancher

VOLUME /opt/rancher
