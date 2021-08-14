#!/usr/bin/env bash

clear
figlet -f slant "The Dark Tech ..." | lolcat
echo -e "\t\t\t\t\t       .......Copyright ©2021 Team Black" | lolcat
echo "     "
echo "     "

figlet -f slant "Stealth-SMS" | lolcat

echo "Press Enter To Launch"
read a1


while :
do
rm *.xxx >/dev/null 2>&1
clear
echo -e "\e[1;31m"
figlet -f slant Stealth-SMS | lolcat
echo -e "\e[1;34m Created By \e[1;32m"  #blue color
toilet -f mono12 -F border "TEAM      BLACK" | lolcat
echo "For Any Queries Mail Us!!!" | lolcat
echo "        Mail: thedarktech.yt@gmail.com" | lolcat
echo " YouTube Page: https://www.youtube.com/channel/UC6_l3aewNJpPYSkg0TpxSCA " | lolcat
echo " Instagram : https://www.instagram.com/thedarktech__/ " | lolcat
echo " "
toilet -f bubble  "MENU" | lolcat
echo " "
echo "1.  Run Stealth-SMS " | lolcat
echo "2.  Track Stealth-SMS " | lolcat  
echo "3.  Check Features " | lolcat
echo "4.  Exit " | lolcat
read ch
if [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python3 send.py
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 2 ];then
clear
echo -e "\e[1;32m"
echo 'Track Stealth-SMS'> call.xxx
python3 send.py track
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 3 ];then
clear
echo 
figlet -f slant Stealth-SMS | lolcat
echo " " 
echo -e "\e[1;34m Created By \e[1;32m"  #blue color
toilet -f mono12 -F border "TEAM      BLACK" | lolcat
echo  " "
toilet -f bubble  "         Features" | lolcat
echo "  Ultra-Fast-Smooth Sending" | lolcat
echo "  International Sending" | lolcat
echo "  Tracking " | lolcat
echo "  Automatic Future Updates" | lolcat
echo "  Easy To Use And Embed in Code" | lolcat
echo ""

echo ""
echo -e "\e[1;31m This is Only For Educational Purposes or To Prank.\e[0m"
echo -e "\e[1;31m Do not Use This To Irritate Others. \e[0m"
echo -e "\e[1;31m Do not Use This To Harm Others. \e[0m"
echo -e "\e[1;31m We Are Not Responsible For The Misuse Of The Script. \e[0m"
echo -e "\e[1;32m Update If Doesn't Work.\e[0m"
echo  " "
echo -e "\e[4;31m That's All !!!\e[0m"
echo "For Any Queries Mail Us!!!" | lolcat
echo "        Mail: thedarktech.yt@gmail.com" | lolcat
echo " YouTube Page: https://www.youtube.com/channel/UC6_l3aewNJpPYSkg0TpxSCA " | lolcat
echo " Instagram : https://www.instagram.com/thedarktech__/ " | lolcat
echo " "
echo "Press Enter To Return To Main Menu"
read a3
clear
elif [ $ch -eq 4 ];then
clear
echo -e "\e[1;31m"
figlet -f slant Stealth-SMS | lolcat
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f pagga -F border "TEAM BLACK" | lolcat
echo "For Any Queries Mail Us!!!" | lolcat
echo "        Mail: thedarktech.yt@gmail.com" | lolcat
echo " YouTube Page: https://www.youtube.com/channel/UC6_l3aewNJpPYSkg0TpxSCA " | lolcat
echo " Instagram : https://www.instagram.com/thedarktech__/ " | lolcat
echo " "
exit 0
else
echo -e "\e[4;32m Invalid Input Detected !!! \e[0m"
echo "Press Enter To Return To Main Menu"
read a3
clear
fi
done