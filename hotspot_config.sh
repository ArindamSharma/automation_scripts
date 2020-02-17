#!/bin/bash
echo "Hotspt Configuration"
read -p "Enter SSID Name :-" name
read -p "Password ( Its Censored ):-" password
#read -sp "Password ( Its Censored ):-" password
printf "\n"
echo "After setup please restart the system to get the effect"
echo "$name , $password"

cd /etc/NetworkManager/system-connections
file=Hotspot.nmconnection
#sudo cat $file
printf "Config Started=============\n"

sudo sed -i "s/ssid=.*/ssid=$name/g" $file
sudo sed -i "s/psk=.*/psk=$password/g" $file

#sudo cat $file
echo "Configration Compleated "
read -p "Do you want to Restart (y/n):-" var
if [ "$var" == "y" ];
then
	echo "Restarting ..."
	reboot
else 
	echo "Please reboot the System to See Changes "
	echo "Thank you for Using"
fi
