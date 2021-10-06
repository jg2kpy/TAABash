#!/bin/bash

ano=`date +%Y`
numDia=`date -d "$(date +%Y-%m-01) -1 day" +%d`

echo "Mes actual: `date +%B`"
echo "Numero de dias del mes: $numDia"

if [ $[$ano % 400] -eq 0 ];then
    echo "Es un ano biciesto"
elif [ $[$ano % 4] -eq 0 ];then
    if [ $[$ano%100] -eq 0 ]; then
        echo "Es un ano biciesto"
    else
        echo "No es un ano biciesto"
    fi
else
    echo "No es un ano biciesto"
fi