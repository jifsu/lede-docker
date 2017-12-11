#!/bin/sh
source config.txt
#docker run --privileged -it $HUBUSER/$DISTRO:$VERSION -p 8080:80, 8022:22 /sbin/init
docker run -p "8080:80" -p "8022:22" --privileged -it $HUBUSER/$DISTRO:$VERSION /sbin/init
