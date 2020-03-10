#!/bin/bash
cd /
cd /sys/class/backlight/intel_backlight
for ((c=10;c<900;c=c+10))
do
	sleep 0.2
	echo $c > brightness
	echo $c "current up"
done
