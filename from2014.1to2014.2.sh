#!/bin/bash
rm -rf /home/*/.config/deepin_monitors.json
#!/bin/bash
rm -rf /usr/share/icons/*/icon-theme.cache
echo "upgrade from 2014.1 to 2014.2...."
sudo apt-get update && sudo apt-get dist-upgrade
