# timezone
timedatectl set-timezone America/New_York 

# install chrome
sudo curl -L bit.ly/chromedeb -o chrome.deb
sudo dpkg -i chrome.deb
rm chrome.deb

# change dns
nmcli con mod "Wired connection 1" ipv4.dns "1.1.1.1,1.0.0.1"
nmcli con mod "Wired connection 1" ipv4.ignore-auto-dns yes
nmcli connection down "Wired connection 1"
nmcli connection up "Wired connection 1"
sleep 1

# install mpv
sudo apt install mpv

# install warp-cli
curl -sL bit.ly/warpcli | bash
