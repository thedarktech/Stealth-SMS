#!/usr/bin/env bash



echo -e "\e[1;31m"
figlet -f slant Stealth-SMS | lolcat
echo -e "\e[1;34m Created By \e[1;32m"  #blue color
toilet -f mono12 -F border "TEAM      BLACK" | lolcat
echo "For Any Queries Mail Us!!!" | lolcat
echo "        Mail: thedarktech.yt@gmail.com" | lolcat
echo " YouTube Page: https://www.youtube.com/channel/UC6_l3aewNJpPYSkg0TpxSCA " | lolcat
echo " Instagram : https://www.instagram.com/thedarktech__/ " | lolcat
echo " "


echo -e "\e[4;31m The Dark Tech \e[0m"
echo  "            Requirment Installer" | lolcat
echo -e "\e[1;34m"
echo "Press Enter To Launch"
read a1

echo 'Installing Requirements....'
echo .
echo .
apt install figlet toilet python curl ruby -y
apt install python3-pip
gem install lolcat

echo ""
echo ""
echo "Requirements Installed...." | lolcat
echo Press Enter To Continue...
read upds
