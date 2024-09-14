#!/bin/sh

# pmset optimization
pmset -a autopoweroff 0
pmset -a powernap 0
pmset -a standby 0
pmset -a proximitywake 0
pmset -a tcpkeepalive 0
pmset -a womp 0
pmset -a lidwake 1
pmset -a displaysleep 10
#pmset -a sleep 1
#pmset -a disksleep 10
#pmset -a ttyskeepawake 1

# disable hibernation
pmset -a hibernatemode 0
rm -f /var/vm/sleepimage
touch /var/vm/sleepimage
chflags schg /var/vm/sleepimage

# rebuild kext cache
kextcache -i /
