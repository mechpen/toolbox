FROM ubuntu:19.10

RUN apt update

RUN apt install -yq \
    vim tmux less strace gnupg ca-certificates awscli nginx \
    socat curl iptables iproute2 net-tools iputils-ping \
    conntrack traceroute mtr dnsutils tcpdump nmap

RUN apt install -yq bpfcc-tools python3-bpfcc bpftrace

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | \
    apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | \
    tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt update && apt install -y kubectl

CMD ["sleep", "infinity"]
