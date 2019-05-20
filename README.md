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
- llvm/clang
- bcc
- and etc.

An example pod spec is in [toolbox.yaml](toolbox.yaml).

bcc
---

To run bcc:

`docker run --rm -it --privileged -v /sys:/sys -v /dev:/dev -v /lib/modules:/lib/modules -v /usr/src:/usr/src mechpen/toolbox /bin/bash`

Or run it as a k8s pod with privileged and the volume mounts.
