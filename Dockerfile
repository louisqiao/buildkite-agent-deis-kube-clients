FROM buildkite/agent

MAINTAINER Rimas Mocevicius <rmocius@gmail.com>

RUN mkdir -p /opt

COPY rootfs /

RUN curl -sSL "http://deis.io/deis-cli/install-v2.sh" >  /opt/deis_install-v2.sh

WORKDIR /opt

RUN chmod +x /opt/*
RUN ./deis_install-v2.sh && ./get_kubectl.sh

RUN mv /opt/deis /usr/local/bin/deis && mv /opt/kubectl /usr/local/bin/kubectl
