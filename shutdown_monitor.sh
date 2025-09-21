#!/bin/bash
# Turn off the monitor immediately
sudo pkill chromium
sleep 8
export DISPLAY=:0
xset dpms force off
