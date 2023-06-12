#!/bin/bash

###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m" 

MYIP=$(wget -qO- ipinfo.io/ip);
clear
echo -e "\e[1;37mSSH MENU\033[0m"
echo -e ""
echo -e "        [\e[1;37m•1\e[0m] \e[1;36mCreate ssh\033[0m"
echo -e "        [\e[1;37m•2\e[0m] \e[1;36mCreate trial\033[0m"
echo -e "        [\e[1;37m•3\e[0m] \e[1;36mRenew ssh\033[0m"
echo -e "        [\e[1;37m•4\e[0m] \e[1;36mDelet ssh\033[0m"
echo -e "        [\e[1;37m•5\e[0m] \e[1;36mCek user login\033[0m"
echo -e "        [\e[1;37m•6\e[0m] \e[1;36mList user\033[0m"
echo -e "        [\e[1;37m•7\e[0m] \e[1;36mDelet ssh expired\033[0m"
echo -e "        [\e[1;37m•8\e[0m] \e[1;36mAuto Kill ssh\033[0m"
echo -e "        [\e[1;37m•9\e[0m] \e[1;36mCek multilogin ssh\033[0m"
echo -e "        [\e[1;33m•0\e[0m] \e[1;33mBack To Menu\033[0m"
echo -e "         ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -p " >>>  "  opt
echo -e ""
case $opt in
1) clear ; usernew ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; renew ; exit ;;
4) clear ; hapus ; exit ;;
5) clear ; cek ; exit ;;
6) clear ; member ; exit ;;
7) clear ; delete ; exit ;;
8) clear ; autokill ; exit ;;
9) clear ; ceklim ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
