FROM alpine:latest

MAINTAINER Gez
# based of neerav/alpine  thakns :)

ENV container docker


RUN apk update;															\
	apk add openrc;														\
	sed -i '/tty/d' /etc/inittab;										\
	sed -i 's/#rc_sys=""/rc_sys="lxc"/g' /etc/rc.conf;					\
    echo 'rc_provide="loopback net"' >> /etc/rc.conf;					\
    sed -i 's/hostname $opts/# hostname $opts/g' /etc/init.d/hostname;	\
  	sed -i 's/mount -t tmpfs/# mount -t tmpfs/g' /lib/rc/sh/init.sh;	\
	rm -rf /var/cache/apk/* ;

CMD ["/sbin/init"]