[appurl]: https://lede-project.org
[![lede-project](https://openwrt.org/.styles/img/openwrt-logo.png)][appurl]

# Minimal LEDE Docker container
This image provides support for testing in OpenWRT environment before applying changes to production level routers.
 - exposed ports: http, ssh
 - works in both, unpriviledged and priviledged modes
 - most services disabled by default, these are enabled: cron, log, uhttpd, dropbear, rpcd
 - nano and luci preinstalled
 - opening a shell automaticly logs in as root with designated environment

What does not work:
 - network script
 - firewall
