FROM centos:latest

MAINTAINER Gez

ENV container docker

RUN yum -y -q install epel-release; yum -y -q upgrade; yum clean all

# Need to do it through backer with systemd up, will work it into packer version
#RUN localectl set-locale LANG= en_US.UTF-8

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

CMD  ["/sbin/init"]