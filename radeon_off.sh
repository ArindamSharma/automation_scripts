#!/bin/bash
#disabling the Graphic Card
cd /etc/default
file=/etc/default/grub
var=$(sed -n 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX=""/p' $file)
if [ ${#var} == 0 ] ; then
	echo "Its already changed to"
else 
	echo "The it has to be changed"
	echo 'Changing GRUB_CMDLINE_LINUX="" to GRUB_CMDLINE_LINUX="radeon.modeset=0"'
	sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="radeon.modeset=0"/p' $file
	echo "Changes made"
	echo "Result will be seen after Reboot "
fi
#sudo sed 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="radeon.modset=0"'
