cd /sys/class/backlight/$(ls /sys/class/backlight | sed -n "2"p )
echo $1 > brightness
#sed -i "s/.*./$1/" brightness
