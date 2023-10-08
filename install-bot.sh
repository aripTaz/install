#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
NC='\e[0m'
echo "OTW install Script Vps Premium.."
echo "waiting......."
echo "Progress..."
sleep 3
#thx
LOGO
clear
echo "# //===================================================="
echo "# //	System Request:Debian 9+/Ubuntu 18.04+/20.04"
echo "# //	Author:	SETANTAZVPN"
echo "# //	recode:	ST-VPN"
echo "# //	Dscription: Xray Menu Management"
echo "# //	email: admin@tazvpn.com"
echo "# //    telegram: https://t.me/TazVPN"
echo "# //===================================================="


sleep 3
#install bot TELEGRAM
### Color
Green="\e[92;1m"
RED="\033[31m"
YELLOW="\033[33m"
BLUE="\033[36m"
FONT="\033[0m"
GREENBG="\033[42;37m"
REDBG="\033[41;37m"
OK="${Green}--->${FONT}"
ERROR="${RED}[ERROR]${FONT}"
GRAY="\e[1;30m"
NC='\e[0m'
red='\e[1;31m'
green='\e[0;32m'
function LOGO() {
    echo -e "
    ┌───────────────────────────────────────────────┐
 ───│                                               │───
 ───│    $Green┌─┐┬ ┬┌┬┐┌─┐┌─┐┌─┐┬─┐┬┌─┐┌┬┐  ┬  ┬┌┬┐┌─┐$NC   │───
 ───│    $Green├─┤│ │ │ │ │└─┐│  ├┬┘│├─┘ │   │  │ │ ├┤ $NC   │───
 ───│    $Green┴ ┴└─┘ ┴ └─┘└─┘└─┘┴└─┴┴   ┴   ┴─┘┴ ┴ └─┘$NC   │───
    │    ${YELLOW}Copyright${FONT} (C)$GRAY https://github.com/rizyulstore$NC     │
    └───────────────────────────────────────────────┘
         ${RED}Autoscript xray vpn lite (multi port)${FONT}    
${RED}Make sure the internet is smooth when installing the script${FONT}
        "

}
#run script
sysctl -w net.ipv6.conf.all.disable_ipv6=1 
sysctl -w net.ipv6.conf.default.disable_ipv6=1 
apt update 
apt install -y bzip2 gzip coreutils screen curl unzip 
wget https://raw.githubusercontent.com/aripTaz/permission/main/setup.sh && chmod +x setup.sh && sed -i -e 's/\r$//' setup.sh && screen -S setup ./setup.sh