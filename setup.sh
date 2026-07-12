#!/bin/bash

# Update existing system
sudo apt-get update
sudo apt-get upgrade -y

# Install CUPS server
sudo apt-get install -y build-essential tix groff dc cups git
sudo usermod -a -G lpadmin scribe
sudo cupsctl --remote-any
sudo systemctl restart cups

# Try accessing web-interface on http://<pi-ip-address>:631

# Install HP-1020 specific drivers
curl https://raw.githubusercontent.com/VarunBarad/scribe/refs/heads/main/foo2zjs.patch > /home/scribe/foo2zjs.patch
git clone https://github.com/koenkooi/foo2zjs.git
cd foo2zjs
git apply /home/scribe/foo2zjs.patch
make clean
make
wget -O sihp1020.tar.gz https://www.quirinux.org/printers/sihp1020.tar.gz
gunzip < sihp1020.tar.gz | tar -xvf -
sudo apt-get remove -y system-config-printer-udev
sudo make install
sudo make install-hotplug
sudo make cups
