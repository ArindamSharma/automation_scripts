#!/bin/bash
#disabling the Graphic Card
cd /etc/default
file=/etc/default/grub
var=$(sed -n 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX=""/p' $file)
if [ ${#var} != 0 ] ; then
	echo "Radeon already on"
else 
	echo "it has to be changed"
	echo 'Changing '$(sed -n '/GRUB_CMDLINE_LINUX="radeon.modeset=0"/p' $file)' to GRUB_CMDLINE_LINUX=""'
	sudo sed -i 's/GRUB_CMDLINE_LINUX=".*/GRUB_CMDLINE_LINUX=""/g' $file
	echo "Changes made"
	sudo update-grub
	echo "Result will be seen after Reboot "
fi
#sudo sed 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="radeon.modset=0"'
