#!/bin/bash

# export DISPLAY=localhost:0

# This script takes 
# 1 argument as c++ file name
# 2 argument as c++ input file if passed (By default it searches for the <filename>_input.txt file)

IFS='.' #setting comma as delimiter  
read -a strarr <<<"$1" #reading str as an array as tokens separated by IFS  

clear

if [ ${strarr} ]; then

    if [[ ${strarr[1]} == "cpp" ]]; then 
        compiler="g++"
    elif [[ ${strarr[1]} == "c" ]]; then 
        compiler="gcc"
    elif [[ ${strarr[1]} == "cc" ]]; then 
        compiler="g++"
    else 
        echo Invalid File : ${strarr}
        exit 1
    fi
else
    echo "Please run again with the name of file after ./$0 ( CLA without extention )"
    echo "example:-  $0 <filename>"
    echo "example:-  $0 <filename> <inputfilename(optional)>"
    echo "Note: It default checks for ${1}_input.txt for test cases"   
    exit 1
fi

echo ">>> "$compiler ${strarr[0]}.${strarr[1]} -o ${strarr[0]}.out
if $compiler ${strarr[0]}.${strarr[1]} -o ${strarr[0]}.out
then
    if [ $2 ];then
        echo ">>>./${strarr[0]}.out < $2"
        if [ ./${strarr[0]}.out < $2 ];then
            rm ${strarr[0]}.out
        fi
    elif [ -f "${strarr[0]}_input.txt" ];then
        # echo "Searching for Default Input File :${strarr[0]}_input.txt"
        echo ">>>./${strarr[0]}.out <${strarr[0]}_input.txt"
        if [ ./${strarr[0]}.out <${strarr[0]}_input.txt ];then
            rm ${strarr[0]}.out
        fi
    else
        echo ">>>./${strarr[0]}.out"
        if [ ./${strarr[0]}.out ];then
            rm ${strarr[0]}.out
        fi
    fi
fi
