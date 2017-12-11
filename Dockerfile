From scratch
MAINTAINER Oskari Rauta <oskari.rauta@gmail.com>

EXPOSE 80
EXPOSE 22

ADD files/lede-17.01.4-x86-64-generic-rootfs.tar.gz /

ENTRYPOINT /sbin/init
