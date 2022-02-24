# change dns
nmcli connection modify "Wired connection 1" ipv4.dns "1.1.1.1,1.0.0.1"
nmcli connection down "Wired connection 1"
nmcli connection up "Wired connection 1"

# cloudflare vpn
curl -sL bit.ly/warpcli | bash

# timezone
timedatectl set-timezone America/New_York 

# chrome
sudo curl -L bit.ly/chromedeb -o chrome.deb
sudo dpkg -i chrome.deb
rm chrome.deb

# extra packages
sudo apt install mpv
