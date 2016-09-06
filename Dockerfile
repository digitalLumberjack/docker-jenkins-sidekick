FROM ubuntu:16.04
ARG RANCHER_VERSION=v0.1.0-rc3

# RANCHER
ADD https://github.com/rancher/cli/releases/download/${RANCHER_VERSION}/rancher-linux-amd64-${RANCHER_VERSION}.tar.gz /usr/share/rancher-linux.tar.gz
RUN tar xvf /usr/share/rancher-linux.tar.gz --strip 2 -C /usr/local/bin
RUN chmod +x /usr/local/bin/rancher

