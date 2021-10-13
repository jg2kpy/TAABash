#!/bin/bash

if [ ! $# -eq 1]; then
    echo "Usage: $0 directory"
    exit -1
fi

if [[ -d $1 ]];then
    echo "Top 5 ficheros mas pesados"
    ls -l $1 | sort -n -k 5 | tail -n 5 | awk '{print $9,"\t",$5}'
    echo "Top 5 ficheros modificados correctamente"
    find $1 -type f -printf "%T@ %p\n" |sort -nr| awk '{print $2}' | awk 'BEGIN{FS="/"} {print $9}' | head -5
else
    echo "No es un directorio"
fi