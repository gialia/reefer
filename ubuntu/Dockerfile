FROM ubuntu:latest

MAINTAINER Gez

ENV container docker

RUN apt-get -y update; apt-get -y upgrade;  apt-get -y install systemd; apt-get -y clean;


RUN systemctl mask					\
   dev-mqueue.mount					\
   dev-hugepages.mount				\
   sys-kernel-config.mount			\
   sys-kernel-debug.mount			\
   sys-fs-fuse-connections.mount	\
   display-manager.service			\
   graphical.target					\
   systemd-logind.service			\
   systemd-remount-fs.service

RUN echo "ForwardToConsole=yes" >> /etc/systemd/journald.conf

RUN systemctl set-default multi-user.target 

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/run"]

CMD  ["/lib/systemd/systemd"]