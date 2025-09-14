#!/bin/bash

# Power off the monitor
#sudo /usr/bin/dtparam hdmi=off

# Stop the kiosk service
#sudo pkill Xorg

#!/bin/bash
# Turn off the monitor immediately
export DISPLAY=:0
xset dpms force off
sleep 4
sudo pkill Xorg
