#!/usr/bin/env bash

figlet Package Updater!

echo "Welcome to TechnoShip123's package updater! This uses the 'Advanced Package Tool', AKA 'apt'."
sleep 1
echo "Would you like to update your packages? I will be using apt update, upgrade, and autoremove."

select yni in "Yes" "No" "Info"; do
	case $yni in
		Yes ) sudo apt-get update -y; sudo apt-get upgrade -y; sudo apt autoremove -y; echo $'\nYour packages are now updated, goodbye!'; break;;
		No ) echo "No problem, exiting the shell script..."; exit 0;;
		# This option does not exit the script:
		Info ) echo "This shell script was made by TechnoShip123 (Thonk)."; echo "You can find the GitHub repository at 'https://github.com/TechnoShip123/shell-scripts'!"
	esac
done
