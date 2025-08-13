# Update existing system
sudo apt-get update
sudo apt-get upgrade

# Install CUPS server
sudo apt-get install cups
sudo usermod -a -G lpadmin varun
sudo cupsctl --remote-any
sudo systemctl restart cups

# Try accessing web-interface on http://<pi-ip-address>:631

# Install HP-1020 specific drivers
git clone https://github.com/koenkooi/foo2zjs.git
cd foo2zjs
make
wget -O sihp1020.tar.gz https://www.quirinux.org/printers/sihp1020.tar.gz
gunzip < sihp1020.tar.gz | tar -xvf -
sudo apt-get remove system-config-printer-udev
sudo make install
sudo make install-hotplug
sudo make cups
