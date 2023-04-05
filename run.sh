#!/bin/bash
IFS='.' #setting comma as delimiter  
read -a strarr <<<"$1" #reading str as an array as tokens separated by IFS  

clear

if [[ ${strarr[1]} == "cpp" ]]; then 
    compiler="g++"
elif [[ ${strarr[1]} == "c" ]]; then 
    compiler="gcc"
elif [[ ${strarr[1]} == "cc" ]]; then 
    compiler="g++"
else 
    echo Unknown File Type
    exit
fi

echo ">>> "$compiler ${strarr[0]}.${strarr[1]} -o ${strarr[0]}.out
if $compiler ${strarr[0]}.${strarr[1]} -o ${strarr[0]}.out
then
    echo ">>>./${strarr[0]}.out"
    echo 
    # echo "======Start======"
    if ./${strarr[0]}.out
    then
        # echo "======Stop ======"
        rm ${strarr[0]}.out
    fi
fi
