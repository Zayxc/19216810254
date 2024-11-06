#!/bin/bash

# Installing pptpd
echo "Installing PPTPD"
sudo apt-get install pptpd -y

# Edit PPTP Configuration
echo "Editing PPTP Configuration"
remote="$ppp1"
remote+="0-200"
sudo echo "localip $ppp1" >> /etc/pptpd.conf
sudo echo "remoteip $remote" >> /etc/pptpd.conf

# Adding VPN Users
echo "Set username:"
read username
echo "Set Password:"
read password
sudo echo "$username * $password *" >> /etc/ppp/chap-secrets

# Restarting Service 
sudo service pptpd restart

echo "All done!"
