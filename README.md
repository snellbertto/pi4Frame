# pi4Frame
My picture frame running from a raspberry pi 4

Install piOS Lite x64.<br>
Update and upgrade - sudo apt update && sudo apt full-upgrade<br>
Use sudo raspi-config to set up default settings for pi.<br>
Install apps with the next command.<br>
sudo apt install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox unclutter xdotool chromium-browser -y<br>
Place kiosk.sh file in home directory of piOS.<br>
Make autostart with next 2 commands.<br>
mkdir -p ~/.config/openbox<br>
nano ~/.config/openbox/autostart<br>
Place next line in the autostart file.<br>
/home/pi/kiosk.sh<br>
Place .bash_profile in ~/.bash_profile<br>
reboot<br>
The code in .bash_profile enables the startx to be stopped. To do that use the next command.<br>
pkill Xorg
