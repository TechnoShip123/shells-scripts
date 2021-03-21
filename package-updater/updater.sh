#!/usr/bin/env bash

figlet Package Updater!

echo "Welcome to TechnoShip123's package updater! This uses the 'Advanced Package Tool', AKA 'apt'."
sleep 1
echo "In this script, I will be using apt update, upgrade, and autoremove."
sleep 1

read -p "Would you like to update your packages? (y/n) " -n 1 -r
echo   # (Blank Line)
if [[ $REPLY =~ ^[Yy]$ ]]  # Check if the reply is yes (upper and lowercase are allowed).]
then
	echo "Okay, running updater..."; sudo apt update; sudo apt upgrade -y; sudo apt autoremove -y
	echo; echo "Everything has been updated! Press any key to exit."; read -p ""

elif [[ $REPLY =~ ^[Nn]$ ]] # If the reply is no.
then
	echo "Alright, exiting the script. Goodbye!"
	exit 0
fi
