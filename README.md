# pi4Frame
My picture frame running from a raspberry pi 4

<ol>
<li>Install piOS Lite x64.</li>
<li>Use sudo raspi-config to set up default settings for pi.</li>
<li>Update and upgrade - sudo apt update && sudo apt full-upgrade</li>
<li>Install apps with the next command.
<ul>sudo apt install --no-install-recommends xserver-xorg x11-xserver-utils xinit openbox unclutter xdotool chromium-browser -y</ul></li>
<li>Place kiosk.sh file in home directory of piOS.</li>
<li>chmod +x /home/pi/kiosk.sh</li>
<li>Make autostart with next 2 commands.
<ul>mkdir -p ~/.config/openbox</ul>
<ul>nano ~/.config/openbox/autostart</ul></li>
<li>Place next line in the autostart file.
<ul>/home/pi/kiosk.sh</ul></li>
<li>Place .bash_profile in ~/.bash_profile</li>
<li>reboot</li>
<li>The code in .bash_profile enables the startx to be stopped. To do that use the next command.
<ul>pkill Xorg</ul></li>
</ol>
