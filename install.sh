#!/bin/bash
chmod a+x auto-scanner
echo -e "\e[1;33mDo You Want To Install it ? (Y)Yes / (N)No\e[0m " 
read answer2

if echo "$answer2" | grep -iq "^y";then
		echo "Installing..."
		sleep 2
		cp -r auto-scanner /usr/bin/
	echo "Copying file into /usr/bin/..."
	sleep 2
else
	echo -e "\e[0;31mExiting...\e[0m"
			    sleep 2
			    clear 
	exit 1
	fi 
if [ -f "/usr/bin/auto-scanner" ]
then 
echo   -e "\e[1;31mInstallation Has Been Completed !\e[0m    "  
sleep 2
echo -e "\e[1;31mLater You Can Run From Terminal by Typing 'auto-scanner' \e[0m"
else 
	echo  "Make Sure You Have  /usr/bin/ !"   
	fi 

	echo -e "\e[1;33mDo You Want To Execute it ? (Y)Yes / (N)No\e[0m " 


read answer
case "$answer" in 
	y)
	echo "Running"" auto-scanner"" now ! "
	sleep 2
    bash /usr/bin/auto-scanner ;;
    Y)
	echo "Running"" auto-scanner"" now ! "
	sleep 2
    bash /usr/bin/auto-scanner ;;

 	*)
	echo -e "\e[0;31mExiting...\e[0m"
			    sleep 2
			    exit 1;;
esac