From scratch
MAINTAINER Oskari Rauta <oskari.rauta@gmail.com>

EXPOSE 80
EXPOSE 22

ADD files/lede-17.01.4-x86-64-generic-rootfs.tar.gz /

RUN mkdir -pv /var/run
RUN mkdir -pv /var/lock
RUN sed --in-place '/ip -4 address flush dev $pi_ifname/d' /lib/preinit/10_indicate_preinit
RUN opkg update
RUN opkg install nano

SHELL ["/usr/libexec/login.sh"]

CMD ["/sbin/init"]
