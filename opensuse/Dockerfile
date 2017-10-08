FROM opensuse:latest

MAINTAINER Gez

ENV container docker

RUN zypper -n install dbus-1 systemd-sysvinit; zypper clean; 

RUN systemctl mask					\
   proc-asound.mount				\
   dev-mqueue.mount					\
   dev-hugepages.mount				\
   sys-kernel-config.mount			\
   sys-kernel-debug.mount			\
   sys-fs-fuse-connections.mount	\
   display-manager.service			\
   graphical.target					\
   systemd-logind.service			\
   systemd-remount-fs.service		\
   systemd-hwdb-update.service 

#RUN echo "ForwardToConsole=yes" >> /etc/systemd/journald.conf


RUN systemctl set-default multi-user.target 

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/run"]

CMD ["/sbin/init"]




