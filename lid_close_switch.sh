#!/bin/bash
var="HandleLidSwitch="
filepath="/etc/systemd/logind.conf"
if [ $1 ]
then
	echo "When lid Closes : $1 "
	user_opt=$1
else 
	echo "What to do when lid close >> lock,ignore,suspend,hibernate,default"
	read -p "Your Choice : " user_opt
fi

if [ $user_opt == "default" ]
then
	#echo "default selected "
	change="#${var}suspend"
	
elif [ $user_opt == "lock" ]
then
	#echo "lock"
	change="$var$user_opt"
elif [ $user_opt == "hibernate" ]
then
	#echo "hibernate"
	change="$var$user_opt"
elif [ $user_opt == "suspend" ]
then
	#echo "suspend"
	change="$var$user_opt"
elif [ $user_opt == "ignore" ]
then
	#echo "ignore"
	change="$var$user_opt"
else
	echo "Wrong input"
	exit
fi

sed -i "s/$var.*/\r${change}/" $filepath
cat $filepath

echo "To see the effect restart is required"
read -p "Want you like to restart now (yes/no) : " user_input
if [ $user_input == "yes" ]
then
	reboot
fi
