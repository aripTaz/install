#!/bin/bash

MYIP=$(wget -qO- ipinfo.io/ip);
clear 
echo -e "\e[1;37mTROJAN-WS MENU\033[0m"
echo -e ""
echo -e "       [\e[1;37m•1\e[0m] \e[1;36mCreate Trojan\033[0m"
echo -e "       [\e[1;37m•2\e[0m] \e[1;36mCreate Trial\033[0m"
echo -e "       [\e[1;37m•3\e[0m] \e[1;36mXtend Trojan\033[0m"
echo -e "       [\e[1;37m•4\e[0m] \e[1;36mDelete Akun Trojan\033[0m"
echo -e "       [\e[1;37m•5\e[0m] \e[1;36mCek user Trojan\033[0m"
echo -e "       [\e[1;33m•0\e[0m] \e[1;33mBack To Menu\033[0m"
echo -e "         ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -p " >>>   " opt
echo -e ""
case $opt in
1) clear ; add-tr ;;
2) clear ; trialtrojan ;;
3) clear ; renew-tr ;;
4) clear ; del-tr ;;
5) clear ; cek-tr ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Boh salah tekan, Sayang kedak Babi" ; sleep 1 ; menu-trojan ;;
esac
