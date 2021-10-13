#!/bin/bash

if [ ! $# -eq 1 ]; then
    echo "Usage: $0 directory"
    exit -1
fi

if [[ -d $1 ]];then
    echo "Top 5 ficheros mas pesados"
    ls -lS $1 | grep -v "^total" | head -n 5 | awk '{print $9," ",$5}'
    echo ""
    echo "Top 5 ficheros modificados correctamente"
    ls -lt $1 | grep -v "^total" | head -n 5 | awk '{print $9}'
else
    echo "No es un directorio"
fi