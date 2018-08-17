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
- bcc
- and etc.

An example pod spec is in [toolbox.yaml](toolbox.yaml).

bcc
---

A method to run bcc on a node without installing anything (tested with
coreos):

1. deploy pod to the node,
2. copy container tree to a temp dir,
3. cd to temp dir, run `chroot.sh`.

Then you should be able to run bcc tools under `/usr/share/bcc/tools`.

After done debugging, must exit chroot and run `cleanup.sh`.
