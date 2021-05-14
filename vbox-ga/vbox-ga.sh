#!/usr/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install build-essential dkms linux-headers-$(uname -r)

read -n 1 -s -r -p "Make sure to insert the Guest Additions CD. If it is inserted/Once it is inserted, press any key to continue..."

sudo mkdir -p /mnt/cdrom
sudo mount /dev/cdrom /mnt/cdrom

cd /mnt/cdrom
sudo sh ./VBoxLinuxAdditions.run --nox11

read -n 1 -s -r -p "All set! I'll be restarting the VM now, press any key to continue..."
sudo reboot now
