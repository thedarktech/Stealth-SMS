#!/bin/bash
# Author: BlackHammer
# Description: Stealth-SMS Can be Used To Send Sms To Anyone Anonymously 

# Colors

# Reset
NC='\033[0m'       # Text Reset

BLINK=$(tput blink)

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green


function banner() {
   
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

   echo -e "$BGreen Hello Mister Unknown... $NC"
   echo -e "$Green   Welcome to Stealth-SMS $NC"
   echo -e "$Green     Stealth-SMS Can be Used To Send Sms To Anyone Anonymously $NC"
   sleep 1
   echo -e "$Green       Let's Get Rolling... $NC"
   echo " "
   sleep 2
   read -n 1 -s -r -p "     Press any key to continue"
}

function ciao() {
   
   
   echo -e "$Green Done... $NC"
   sleep 1
   echo -e "$Green Closing Stealth-SMS... $NC"
   sleep 1
   echo " "
   echo -e "$BGreen Hope To See You Again.. $NC"
   echo " "
   exit
}

function version() {
   echo " "
   echo -e "$BGreen Stealth-SMS version: v1.8(Bash version)"
   echo " "
}

function SENDTEXT() {
    echo ""
   echo -e "$Red      Enter Phone Number Like Country Code>Number"
   echo -e "$Yellow      For Example country code = $Blue 91 $Green And Phone Number = $Blue 5566778899"
   echo -e "$Yellow      Enter Number as > $Blue 915566778899"
   echo -e "$Green      Enter Phone Number With Country Code: $NC"
   
   read PHONE
   
   echo "  "
   echo -e "$Green Enter Message: $NC"
   
   read SMS


   smsres=$(curl -# -X POST https://textbelt.com/text --data-urlencode phone="$PHONE" --data-urlencode message="$SMS" -d key=textbelt)
   
   if grep -q true <<<"$smsres"
   
   then
      
      echo "  "
      echo -e "$BGreen SUCCESS $NC"
      echo "  "
      echo -e "$BGreen *********************************************** $NC"
      echo "$smsres"
      echo -e "$BGreen *********************************************** $NC"
      echo "  "
      ciao
   else
      
      echo "  "
      echo -e "$BRed FAIL $NC"
      echo "  "
      echo -e "$BGreen ********************************************** $NC"
      echo "$smsres"
      echo -e "$BGreen ********************************************** $NC"
      echo " "
      ciao
   fi
}

function SMSCHECK() {
   
   echo "  "
   echo -e "$Green Enter Text ID (example 12589): $NC"
   
   read TEXTID
   
   STATUSRESULT=$(curl -# https://textbelt.com/status/"$TEXTID")
   
   echo " "
   echo -e "$BGreen Final Response (JSON): $NC"
   echo " "
   echo -e "$BGreen *********************************************** $NC"
   echo "$STATUSRESULT"
   echo -e "$BGreen *********************************************** $NC"
   echo "  "
}

function helpfunction() {
   
   echo "  "
   echo -e "$BGreen Available opions: $NC"
   echo -e " "
   echo -e "$BGreen Show this page: --help $NC"
   echo -e "$BGreen Check text message status: --statuscheck $NC"
   echo -e "$BGreen Send text message: --SEND $NC"
   echo -e "$BGreen Print version: --version $NC"
   echo "  "
   echo "  "
}

if [ "$1" == "--statuscheck" ]

then
   banner
   SMSCHECK
   ciao

elif [ "$1" == "--SEND" ]

then
   banner
   SENDTEXT
   ciao

elif [ "$1" == "--help" ]

then
   helpfunction
   
elif [ "$1" == "--version" ]
   
   then
      version


elif [ $# -le 0 ]

then
   echo " "
   echo -e "$Red No arguments specified! $NC"
   echo -e "$Red Use$NC $BRed--help$NC $Red to display options.$NC"
   echo " "

else
   echo " "
   echo -e "$Red No such argument available!$NC"
   echo -e "$Red Use$NC $BRed--help$NC $Red to display options.$NC"
   echo " "

fi
