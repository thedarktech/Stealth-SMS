#!/usr/bin/env python
import threading
import string
import base64
import urllib.request
import urllib.parse
import os
import time
import sys
import random

try:
    import requests
except ImportError:
    print('Error !! : Some dependencies are not installed')
    print('Error Occured!!!\nUse Non-Supported Version')
    input('Press Any Key To Use Non-supported Version')
    os.system('bash send.sh --sendsms')

# colors
yellow='\033[93m'
gren='\033[92m'
cyan='\033[96m'
pink='\033[95m'
red='\033[91m'
b='\033[1m'
W = '\033[0m'
colors = ['\033[1;31m', '\033[1;32m', '\033[1;33m', '\033[1;34m', '\033[1;35m', '\033[1;36m']

# The Credit For This Code Goes To Team Black https://github.com/thedarktech
# If You Wanna Take Credits, Please Look Yourself Again!!

def clr():
	if os.name == 'nt':
		os.system('cls')
	else:
		os.system('clear')

def banner():
    clr()
    os.system('figlet -f slant Stealth-SMS | lolcat')
    os.system('echo -e "\e[1;34m Created By \e[1;32m"')
    os.system('toilet -f mono12 -F border "TEAM      BLACK" | lolcat')
    os.system('echo "For Any Queries Mail Us!!!" | lolcat')
    os.system('echo "        Mail: thedarktech.yt@gmail.com" | lolcat')
    os.system('echo " YouTube Page: https://www.youtube.com/channel/UC6_l3aewNJpPYSkg0TpxSCA " | lolcat')
    os.system('echo " "')

    print("\n")
    

def Track() :
  TXTID = input("Enter Text ID of Stealth-SMS \n\t -->>")
  os.system(f"curl https://textbelt.com/status/{TXTID}")
  input("\nPress Enter To Exit..")
  print("\nThanks For Using Stealth-SMS..")
  print("\tWe Hope To See You Again\n Type bash Run.sh\n\tTo Run Again..")
  print('\n\n\nThank You For Using Stealth-SMS')

  exit()
  
    
while True:
	print("\033[0mYou can us This Tool To Send Anonymous Messages To Anyone")
	break
type = 0
try:
	if sys.argv[1] == "track":
		type = 1
except Exception:
	type = 0
if type == 1:
	print("Track The Anonymous Message You Sent Using This Tool.")
	print()
	Track()
elif type == 0:
	while True:
		print("\nEnter The Details Of The Person You Want To Send Anonymous Message")
		cc = input("\tEnter Country Code (Without +) : ")
		if '+' in cc:
		        tc = list(cc)
		        tc.remove('+')
		        cc = ''.join(tc)
		        cc = cc.strip()
		if len(cc) >= 4 or len(cc) < 1:
		        print('\n\nInvalid Country Code..\n\t\tCountry Codes Are Generally 1-3 digits...\n')
		        continue
		pn = input("Enter Phone Number : +" + cc + " ")
		if len(pn) <= 6:
		        print('\n\nInvalid Phone Number..\n')
		        continue
		numbe = cc + pn
		if not numbe.isdigit():
		            print('\n\nPhone Number Must Consist Of Numbers Only\n')
		            continue
		receiver = '+' + numbe
		text = input("Enter Message to send : ")
		
		resp = requests.post('https://textbelt.com/text',{
			'phone' : receiver,
			'message' : text ,
			'key' : 'textbelt'
		})
		
		print(resp.json())
		print('\n\n\nThank You For Using Stealth-SMS')

		break
		if '"success" : true ' in resp.text:
		    print("\033[92m Message Sent Succesfully \033[0m")
		    input('\n\t\tPress Enter To Exit...')
		    banner()
		    exit()
		if '"success" : false ' in resp.text:
		    print("\033[91m Error Occured")
		    print("\033[91m Failed to send SMS! ")
		    input('\n\t\tPress Enter To Exit...')
		    banner()
		    exit()
		exit() 
