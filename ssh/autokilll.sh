#!/bin/bash

Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e "\e[1;37mAUTOKILL SSH\033[0m"
echo -e " "
echo -e "Status Autokill : $sts        "
echo -e ""
echo -e "    [\e[1;37m•1\033[0m]  \e[1;36mAutoKill dalam 5 Minutes\033[0m"
echo -e "    [\e[1;37m•2\033[0m]  \e[1;36mAutoKill dalam 10 Minutes\033[0m"
echo -e "    [\e[1;37m•3\033[0m]  \e[1;36mAutoKill dalam 15 Minutes\033[0m"
echo -e "    [\e[1;37m•4\033[0m]  \e[1;36mTurn Off AutoKill/MultiLogin\033[0m"
echo -e "    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
echo -e ""
read -p "Select [1-4 or x] :  " AutoKill
if [ -z $AutoKill ]; then
autokill-menu
fi
read -p "Multilogin Maximum Number Of Allowed: " max
echo -e ""
case $AutoKill in
                1)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >/etc/cron.d/tendang
                echo "*/5 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================" | lolcat
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 5 Minutes"      
                echo -e ""
                echo -e "======================================" | lolcat                                                                                                                                
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1                                                                  
                ;;
                2)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >/etc/cron.d/tendang
                echo "*/10 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 10 Minutes"
                echo -e ""
                echo -e "======================================"
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1
                ;;
                3)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >/etc/cron.d/tendang
                echo "*/15 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      Allowed MultiLogin : $max"
                echo -e "      AutoKill Every     : 15 Minutes"
                echo -e ""
                echo -e "======================================"
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1
                ;;
                4)
                clear
                rm /etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      AutoKill MultiLogin Turned Off  "
                echo -e ""
                echo -e "======================================"
                service cron restart >/dev/null 2>&1
                service cron reload >/dev/null 2>&1
                ;;
                x)
                clear
                autokill-menu
                ;;
        esac
read -n 1 -s -r -p "Press any key to back on menu"
menu
