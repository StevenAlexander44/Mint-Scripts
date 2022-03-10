# timezone
timedatectl set-timezone America/New_York 

# change dns
CON="Wired connection 1"
nmcli con mod "$CON" ipv4.dns "1.1.1.1,1.0.0.1"
nmcli con mod "$CON" ipv4.ignore-auto-dns yes
nmcli connection down "$CON"
nmcli connection up "$CON"
sleep 1

# install chrome
sudo curl -L bit.ly/chromedeb -o chrome.deb
sudo dpkg -i chrome.deb
rm chrome.deb

# install mpv
sudo apt install mpv

# install warp
curl -sL bit.ly/wgcfdl | bash
