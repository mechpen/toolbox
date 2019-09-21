FROM ubuntu:19.04

RUN apt update

RUN apt install -yq \
    vim tmux less strace gnupg ca-certificates awscli nginx \
    socat curl iptables iproute2 net-tools iputils-ping \
    conntrack traceroute mtr dnsutils tcpdump nmap

RUN apt install -yq \
    bison cmake flex g++ git libelf-dev \
    zlib1g-dev libfl-dev systemtap-sdt-dev \
    llvm-7-runtime llvm-7-dev clang-7 libbpfcc-dev \
    libbpfcc libclang-7-dev && \
    git clone https://github.com/iovisor/bpftrace && \
    mkdir bpftrace/build && \
    cd bpftrace/build && cmake -DCMAKE_BUILD_TYPE=Release .. && \
    make && make install && \
    apt remove --autoremove -yq \
    bison cmake flex g++ git libelf-dev \
    zlib1g-dev libfl-dev systemtap-sdt-dev \
    llvm-7-runtime llvm-7-dev clang-7 libbpfcc-dev

RUN apt install -yq bpfcc-tools python3-bpfcc

RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | \
    apt-key add - && \
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | \
    tee -a /etc/apt/sources.list.d/kubernetes.list && \
    apt update && apt install -y kubectl

CMD ["sleep", "infinity"]
