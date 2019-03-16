FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    vim tmux less \
    strace gnupg ca-certificates awscli nginx \
    socat curl iptables iproute2 net-tools iputils-ping dnsutils tcpdump nmap

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt-get update && apt-get install -y kubectl

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D4284CDD && \
    echo "deb https://repo.iovisor.org/apt/bionic bionic main" | tee /etc/apt/sources.list.d/iovisor.list && \
    apt-get update && apt-get install -y bcc-tools python3-bcc linux-libc-dev

CMD ["sleep", "infinity"]
