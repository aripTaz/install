#!/bin/bash

MYIP=$(wget -qO- ipinfo.io/ip);
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[40;1;37m       • MENU VLESS •         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " [\e[36m•1\e[0m] Buat Vless "
echo -e " [\e[36m•2\e[0m] Buat Trial "
echo -e " [\e[36m•3\e[0m] Ubah Akun Vless "
echo -e " [\e[36m•4\e[0m] Hapus Akun Vless "
echo -e " [\e[36m•5\e[0m] Cek User Login Vless "
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select =>  "  opt
echo -e ""
case $opt in
1) clear ; add-vless ; exit ;;
2) clear ; trialvless ; exit ;;
3) clear ; renew-vless ; exit ;;
4) clear ; del-vless ; exit ;;
5) clear ; cek-vless ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
