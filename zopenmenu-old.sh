#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y   ZMENU UTAMA BACKUP $wh"
echo -e "$y----------------------------$wh"
echo -e "$yy 1$y.  OpenVPN-SSH  $wh"
echo -e "$yy 2$y.  MENU VMESS  $wh"
echo -e "$yy 3$y.  MENU VLESS  $wh"
echo -e "$yy 4$y.  MENU TROJAN  $wh"
echo -e "$yy 5$y.  MENU DOMAIN  $wh"
echo -e "$yy 6$y.  MENU SYSTEM  $wh"
echo -e "$yy 7$y.  MENU UTAMA  $wh"
echo -e "$yy 13$y. Exit$wh"
echo -e "$y----------------------------$wh"
read -p "Pilih Menu [ 1 - 13 ] : " zmenu
case $zmenu in
1) clear ; zsshovpnmenu;;
2) clear ; m-vmess;;
3) clear ; m-vless;;
4) clear ; m-trojan;;
5) clear ; m-domain;;
6) clear ; m-system;;
7) clear ; menu;;
13)
clear
exit
;;
*)
clear
zmenu
;;
esac
