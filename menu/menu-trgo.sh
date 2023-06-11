#!/bin/bash

MYIP=$(wget -qO- ipinfo.io/ip);
clear 
echo -e "\e[1;37mTROJAN-GO MENU\033[0m"
echo -e " "
echo -e "         [\e[1;37m•1\e[0m] \e[1;36mCreate TrojanGo\033[0m"
echo -e "         [\e[1;37m•2\e[0m] \e[1;36mCreate Trial\033[0m"
echo -e "         [\e[1;37m•3\e[0m] \e[1;36mXtend TrojanGo\033[0m"
echo -e "         [\e[1;37m•4\e[0m] \e[1;36mDelete Akun Trojan-Go\033[0m"
echo -e "         [\e[1;37m•5\e[0m] \e[1;36mCek Login Trojan-Go\033[0m"
echo -e "         [\e[1;33m•0\e[0m] \e[1;33mBack To Menu\033[0m"
echo -e "         ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -p " >>>   " opt
echo -e ""
case $opt in
1) clear ; addtrgo ;;
2) clear ; trialtrojango ;;
3) clear ; renewtrgo ;;
4) clear ; deltrgo ;;
5) clear ; cektrgo ;;
0) clear ; menu ;;
x) exit ;;
*) echo "salah tekan" ; sleep 1 ; menu-trojan ;;
esac
