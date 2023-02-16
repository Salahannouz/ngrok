#!/bin/bash

sleep 2
r='\e[99;31m' # Red
g='\e[99;32m' # Green
y='\e[99;33m' # Yellow
b='\e[99;34m' # Blue

apt update -y;apt upgrade -y
apt install  wget -y
apt install  wget -y

clear
echo
echo -e $g"Do you want to install Ngrok? [Y/n]"
read selection
case $selection in
y)

clear
echo
sleep 2
printf "Please wait..[                    ] 0% "
sleep 3
clear
printf "Please wait..[=====               ] 25%"
sleep 3.5
clear
printf "Please wait..[==========          ] 50%"
sleep 4
clear
printf "Please wait..[===============     ] 75%"
sleep 4.5
clear
printf "Please wait..[====================] 100%"
sleep 5
clear

case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo ""
esac
echo -e $g"  \t \t Downloading..!"
wget "https://github.com/AL-AlamySploit/Ngrok-Test/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
xdg-open https://m.youtube.com/channel/UCOvC4r8gpx4uLIiBz3Q65WA
sleep 0.10
clear
;;

n)
    echo -e "${r}[-] Ngrok not installed"
    echo
    ;;
    
exit)
    echo -e $y"Goodbye "
    ;;
    
*)
    echo -e $y"unknown"
    ;;
esac
