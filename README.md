Toolbox Image
=============

I use this image to troubleshoot Kubernetes.  The image has the
following tools:

- git
- kubectl
- tcpdump
- nmap
- dig
- socat
- aws-cli
- curl
- bcc
- bpftrace
- bcc
- and etc.

An example pod spec is in [toolbox.yaml](toolbox.yaml).

bpftrace
--------

To run bpftrace:

`docker run --rm -it --privileged -v /sys:/sys mechpen/toolbox /bin/bash`

bcc
---

To run bcc:

`docker run --rm -it --privileged -v /sys:/sys -v /dev:/dev -v /lib/modules:/lib/modules -v /usr/src:/usr/src mechpen/toolbox /bin/bash`

The docker commands can be replaced with a k8s pod with the privileged
security context and the necessary volume mounts.
