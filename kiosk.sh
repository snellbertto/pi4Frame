#!/bin/bash
sleep 10

# Start X with openbox
xinit /usr/bin/openbox-session -- /usr/bin/X :0 &
sleep 5

# Disable blanking
export DISPLAY=:0
xset -dpms
xset s off
xset s noblank

# Hide mouse
unclutter -idle 0.5 -root &

# Launch Chromium
chromium-browser --noerrdialogs --disable-infobars --kiosk \
"http://your.website.com/?weather=new-york" \
"http://your.website.com" &

sleep 15
while true; do
    xdotool key "ctrl+Tab"
    sleep 30
done
