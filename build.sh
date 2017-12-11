#!/bin/sh
set -x
set -u
source config.txt

docker import https://downloads.lede-project.org/releases/$VERSION/targets/x86/64/$REPO-generic-rootfs.tar.gz $DISTRO:$VERSION
CTID=$(docker run -d -it $DISTRO:$VERSION /bin/sh)
docker exec $CTID mkdir -pv /var/run
docker exec $CTID mkdir -pv /var/lock
docker exec $CTID opkg update
docker exec $CTID opkg install nano
docker commit $CTID $HUBUSER/$DISTRO:$VERSION
docker push $HUBUSER/$DISTRO:$VERSION
