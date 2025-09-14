# pi4Frame
My picture frame running from a raspberry pi 4

Install piOS Lite x64.  
Use sudo raspi-config to set up default settings for pi.  
Update and upgrade - sudo apt update && sudo apt full-upgrade  
Install apps with the next command.  
sudo apt install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox unclutter xdotool chromium-browser -y  
Place kiosk.sh file in home directory of piOS.  
Make autostart with next 2 commands.  
mkdir -p ~/.config/openbox  
nano ~/.config/openbox/autostart  
Place next line in the autostart file.  
/home/pi/kiosk.sh<br>
Place .bash_profile in ~/.bash_profile  
reboot  
The code in .bash_profile enables the startx to be stopped. To do that use the next command.  
pkill Xorg  
