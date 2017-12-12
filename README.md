[appurl]: https://lede-project.org
[![lede-project](https://openwrt.org/.styles/img/openwrt-logo.png)][appurl]

# Docker container for LEDE
 - comes with preinstalled nano and tweaked startup script
 - exposed ports: http, ssh
 - works in both, unpriviledged and priviledged modes
 - most services disabled by default, these are enabled: cron, log, uhttpd, dropbear, rpcd
 - nano preinstalled
 
 # Shell
 If you enter via shell, you should execute '/usr/libexec/login.sh' to get into designated environment.
