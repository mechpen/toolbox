Toolbox Image
=============

I use this image to troubleshoot Kubernetes.  The image has the
following tools:

- kubectl
- tcpdump
- nmap
- dig
- socat
- aws-cli
- curl
- bpftrace
- and etc.

An example pod spec is in [toolbox.yaml](toolbox.yaml).

bpftrace
--------

To run bpftrace:

`docker run --rm -it --privileged -v /sys:/sys mechpen/toolbox /bin/bash`

Or run it as a k8s pod with privileged security context and the `/sys`
volume mounts.
