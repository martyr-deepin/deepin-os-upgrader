#!/bin/bash
#!/bin/bash
rm -rf /usr/share/icons/*/icon-theme.cache
echo "upgrade from 2014.2RC to 2014.2...."
sudo apt-get update && sudo apt-get dist-upgrade
