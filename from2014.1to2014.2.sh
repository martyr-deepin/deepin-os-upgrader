#!/bin/bash
rm -rf /home/*/.config/deepin_monitors.json
#!/bin/bash
sudo rm -rf /usr/share/icons/*/icon-theme.cache
sudo apt-get purge tlp
dpkg -l | grep kingsoft-office >/dev/null && apt-get purge -y kingsoft-office && apt-get install wps-office
dpkg -l | grep wps-office- >/dev/null && apt-get purge  wps-office-* && apt-get install wps-office
sudo apt-get update && sudo apt-get dist-upgrade
