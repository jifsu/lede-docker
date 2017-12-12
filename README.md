[appurl]: https://lede-project.org
[![lede-project](https://openwrt.org/.styles/img/openwrt-logo.png)][appurl]

# Minimal LEDE Docker container
This image provides support for testing in OpenWRT environment before applying changes to production level routers.
Features:
 - exposed ports: http, ssh
 - works in both, unpriviledged and priviledged modes
 - most services disabled by default, these are enabled: cron, log, uhttpd, dropbear, rpcd
 - nano preinstalled
