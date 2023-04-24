# automation_scripts
These Scripts are Linux(bash,sh) Based and few might be windows (vbs)

## brightnesscontroller.sh script
this script allows to increase or decrease the brightness of the screen via terminal.this script might come in handy if the brightness button is not functioning properly. 
Note: needed to be run with sudo permision 
```
sudo ./brightnesscontroller.sh 
```

## hotsopt_config.sh script
terminal based basic configuration tool.(build for older version of linux which dosent support gui interface for hotspot configuration)
this script allows user to comfigure there hotspot basic setting with not much to provide other that username and password. the older linux version which dosent provided a gui interface for configuring hotspot ,this script might really come in handy.
```
./hotspot_config.sh
```

## terminalcolor.sh script
this script shows majourity of the terminal supported colors that can be used to easily recall the color unicode and can help to beautify the terminal with custom color design output screen for any of your program .
```
./terminalcolor.sh
```

## touchscreen.sh script
it automitically disables the touchscreen input for an touchscreen enabled laptop.
it works on predefined inbuilt tool such as awk ,sed ,grep etc.
running is quite simple 
```
./touchscreen.sh
```

## run.sh script
compiles any c/c++ file based on extension and execute the object file with visible command .Takes input file as 2nd argument (optional) if not passes searches for a default input file with **\<filename>_input.txt**
```
./run.sh <filename.cpp/filename.c/filename.cc> <input.txt-file(optional)>
```

