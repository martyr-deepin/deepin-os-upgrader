#!/bin/bash
rm -rf /usr/share/icons/*/icon-theme.cache
apt-get update && apt-get dist-upgrade
/usr/lib/deepin-daemon/grub2 --setup
update-grub
