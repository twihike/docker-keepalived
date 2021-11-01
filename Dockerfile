FROM ubuntu:20.04

RUN apt update \
  && DEBIAN_FRONTEND=noninteractive \
    apt install -y --no-install-recommends \
    keepalived curl netcat \
  && apt clean \
  && rm -rf /var/lib/apt/lists/*
RUN useradd keepalived_script
RUN /usr/sbin/keepalived --version

CMD ["/usr/sbin/keepalived", "-l", "-n"]
