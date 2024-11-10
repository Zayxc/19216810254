#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                 OpenVPN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  Create SSH & OpenVPN Account"
echo -e "$yy 2$y.  Generate SSH & OpenVPN Trial Account"
echo -e "$yy 3$y.  Extending SSH & OpenVPN Account Active Life"
echo -e "$yy 4$y.  Check User Login SSH & OpenVPN"
echo -e "$yy 5$y.  Daftar Member SSH & OpenVPN"
echo -e "$yy 6$y.  Delete SSH & OpenVpn Account"
echo -e "$yy 7$y.  Delete User Expired SSH & OpenVPN"
echo -e "$yy 8$y.  Set up Autokill SSH"
echo -e "$yy 9$y.  Displays Users Who Do Multi Login SSH"
echo -e "$yy 10$y. Restart All Service"
echo -e "$yy 11$y. Menu Utama"
echo -e "$yy 12$y. Exit"
echo -e "$y-------------------------------------------------------------$wh"
read -p "Select From Options [ 1 - 12 ] : " zmenu
echo -e ""
case $zmenu in
1)
zaddssh
;;
2)
ztrialssh
;;
3)
zrenewssh
;;
4)
zcekssh
;;
5)
zmember
;;
6)
zdelssh
;;
7)
zdelexp
;;
8)
zautokill
;;
9)
zceklim
;;
10)
zrestart
;;
11)
zmenu
;;
12)
clear
exit
;;
*)
clear
zmenu
;;
esac
