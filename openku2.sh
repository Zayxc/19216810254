#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
# ==================================================
apt update -y
apt install curl -y
apt install software-properties-common -y
apt install -y nano
apt install -y sudo
sudo apt-get install wget screen



# simple password minimal
wget -O /etc/pam.d/common-password "https://raw.github.com/Zayxc/19216810254/main/password"
chmod +x /etc/pam.d/common-password

# go to root
cd

# Edit file /etc/systemd/system/rc-local.service
cat > /etc/systemd/system/rc-local.service <<-END
[Unit]
Description=/etc/rc.local
ConditionPathExists=/etc/rc.local
[Service]
Type=forking
ExecStart=/etc/rc.local start
TimeoutSec=0
StandardOutput=tty
RemainAfterExit=yes
SysVStartPriority=99
[Install]
WantedBy=multi-user.target
END

# nano /etc/rc.local
cat > /etc/rc.local <<-END
#!/bin/sh -e
# rc.local
# By default this script does nothing.
exit 0
END

# Ubah izin akses
chmod +x /etc/rc.local

# enable rc local
systemctl enable rc-local
systemctl start rc-local.service

# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local

#update
apt update -y
#apt upgrade -y
#apt dist-upgrade -y
#apt-get remove --purge ufw firewalld -y
#apt-get remove --purge exim4 -y

# Install Requirements Tools
apt install ruby -y
apt install python -y
apt install make -y
apt install cmake -y
apt install coreutils -y
apt install rsyslog -y
apt install net-tools -y
apt install zip -y
apt install unzip -y
apt install sed -y
apt install gnupg -y
apt install gnupg1 -y
apt install bc -y
apt install jq -y
apt install apt-transport-https -y
apt install build-essential -y
apt install dirmngr -y
apt install libxml-parser-perl -y
apt install neofetch -y
apt install git -y
apt install lsof -y
apt install libsqlite3-dev -y
apt install libz-dev -y
apt install gcc -y
apt install g++ -y
apt install libreadline-dev -y
apt install zlib1g-dev -y
apt install libssl-dev -y
apt install libssl1.0-dev -y
apt install dos2unix -y

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config

# install
apt-get --reinstall --fix-missing install -y bzip2 gzip coreutils wget screen rsyslog iftop htop net-tools zip unzip wget net-tools curl nano sed screen gnupg gnupg1 bc apt-transport-https build-essential dirmngr libxml-parser-perl neofetch git lsof
echo "clear" >> .profile
echo "neofetch" >> .profile


# install badvpn
#cd
#wget -O /usr/bin/badvpn-udpgw "https://raw.github.com/Zayxc/19216810254/main/badvpn-udpgw64"
#chmod +x /usr/bin/badvpn-udpgw
#sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500' /etc/rc.local
#sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500' /etc/rc.local
#sed -i '$ i\screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500' /etc/rc.local
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7100 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7200 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7400 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7500 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7600 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7700 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7800 --max-clients 500
#screen -dmS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7900 --max-clients 500

[openvpn]
accept = 990
connect = 127.0.0.1:1194

END

[Install]
WantedBy=multi-user.target
END

#OpenVPN
wget https://raw.github.com/Zayxc/19216810254/main/zvpn.sh &&  chmod +x zvpn.sh && ./zvpn.sh


# download script
#cd /usr/bin
#wget -O zmenu "https://raw.github.com/Zayxc/19216810254/main/zopenmenu.sh"
#wget -O zsshovpnmenu "https://raw.github.com/Zayxc/19216810254/main/zmenuvpn.sh"
#wget -O zaddssh "https://raw.github.com/Zayxc/19216810254/main/zaddssh.sh"
#wget -O ztrialssh "https://raw.github.com/Zayxc/19216810254/main/ztrialssh.sh"
#wget -O zdelssh "https://raw.github.com/Zayxc/19216810254/main/zdelssh.sh"
#wget -O zmember "https://raw.github.com/Zayxc/19216810254/main/zmember.sh"
#wget -O zdelexp "https://raw.github.com/Zayxc/19216810254/main/zdelexp.sh"
#wget -O zcekssh "https://raw.github.com/Zayxc/19216810254/main/zcekssh.sh"
#wget -O zceklim "https://raw.github.com/Zayxc/19216810254/main/zceklim.sh"
#wget -O zrenewssh "https://raw.github.com/Zayxc/19216810254/main/zrenewssh.sh"
#wget -O zautokill "https://raw.github.com/Zayxc/19216810254/main/zautokill.sh"
#wget -O zclearlog "https://raw.github.com/Zayxc/19216810254/main/zclearlog.sh"

#chmod +x zmenu
#chmod +x zsshovpnmenu
#chmod +x zaddssh
#chmod +x ztrialssh
#chmod +x zdelssh
#chmod +x zmember
#chmod +x zdelexp
#chmod +x zcekssh
#chmod +x zceklim
#chmod +x zautokill
#chmod +x zrenewssh
#chmod +x zclearlog

echo "0 5 * * * root clearlog && reboot" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
# remove unnecessary files

cd
rm -f /root/key.pem
rm -f /root/cert.pem
rm -f /root/ssh-vpn.sh

# finihsing
clear
