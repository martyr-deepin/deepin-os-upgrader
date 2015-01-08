#!/bin/bash
rm -rf /home/*/.config/deepin_monitors.json
rm -rf /usr/share/icons/*/icon-theme.cache
apt-get purge tlp
dpkg -l | grep kingsoft-office >/dev/null && apt-get purge -y kingsoft-office && apt-get install wps-office
dpkg -l | grep wps-office- >/dev/null && apt-get purge  wps-office-* && apt-get install wps-office
apt-get update && apt-get dist-upgrade
/usr/lib/deepin-daemon/grub2 --setup
update-grub
