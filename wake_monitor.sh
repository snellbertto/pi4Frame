#!/bin/bash
# Make sure to target the correct X display
#export DISPLAY=:0

# Force the monitor on
#xset dpms force on

# Update, upgrade, and remove unnecessary packages on the system
sudo apt update && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo apt autoremove -y

# Reboot the system
sudo reboot
