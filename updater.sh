#!/bin/bash
echo " " 
echo "-----------------"
echo "     Updating"
echo "----------------- "
echo " "
sudo apt update -y && sudo apt upgrade -y && sudo apt dist-upgrade -y
sudo snap refresh

echo " " 
echo "---------------- "
echo "    Cleaning "
echo "----------------- "
echo " "
sudo apt clean -y && sudo apt autoremove -y && sudo apt autoclean -y

clear
