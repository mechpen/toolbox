FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    gnupg ca-certificates awscli \
    socat curl iproute2 net-tools iputils-ping dnsutils tcpdump nmap

ADD https://storage.googleapis.com/kubernetes-release/release/v1.11.2/bin/linux/amd64/kubectl /bin/

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D4284CDD && \
    echo "deb https://repo.iovisor.org/apt/bionic bionic main" | tee /etc/apt/sources.list.d/iovisor.list && \
    apt-get update && apt-get install -y bcc-tools linux-libc-dev

ADD chroot.sh cleanup.sh /

CMD ["sleep", "10000"]
