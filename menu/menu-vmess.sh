#!/bin/bash

MYIP=$(wget -qO- ipinfo.io/ip);
clear
echo -e "\e[1;37mVMESS MENU\033[0m"
echo -e ""
echo -e "       [\e[1;37m•1\e[0m] \e[1;36mCreate v2ray\033[0m"
echo -e "       [\e[1;37m•2\e[0m] \e[1;36mCreate trial\033[0m"
echo -e "       [\e[1;37m•3\e[0m] \e[1;36mXtendd V2ray\033[0m"
echo -e "       [\e[1;37m•4\e[0m] \e[1;36mDelete V2ray\033[0m"
echo -e "       [\e[1;37m•5\e[0m] \e[1;36mCek User Login\033[0m"
echo -e "       [\e[1;33m•0\e[0m] \e[1;33mBack To Menu\033[0m"
echo -e "        ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -p "  >>>   "  opt
echo -e ""
case $opt in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; renew-ws ; exit ;;
4) clear ; del-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Salah pencet" ; menu-ssh ;;
esac
