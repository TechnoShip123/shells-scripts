# Vbox Guest Additions Installer

### Dependencies
- Advanced Package Tool/APT (Vital)
- VirtualBox
- VirtualBox Guest Additions CD

### Info
This script will update/upgrade the system, install the requirements for Vbox Guest Additions,
and automatically mount + run the installer. After the installation the system will reboot.

### Breakdown
- Apt update/upgrade
- Install: `build-essential dkms linux-headers-$(uname -r)`
- Make a directory for the GA CD
- Mount the CD to the directory
- Run the Guest Additions installation script
- Reboot the system
