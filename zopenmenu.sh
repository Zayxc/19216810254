#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                  ZMENU UTAMA $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  OpenVPN ZMENU  $wh"
echo -e "$yy 13$y. Exit$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 13 ] : " zmenu
case $zmenu in
1)
clear
zsshovpnmenu
;;
13)
clear
exit
;;
*)
clear
zmenu
;;
esac
