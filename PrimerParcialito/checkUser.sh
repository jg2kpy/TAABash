#!/bin/bash

user=$1
pathFile="/etc/passwd"

comand=`grep $user $pathFile`

if [ -z "$comand" ] 
then
    echo "No se encuentra $user en el archivo $pathFile"
else
    echo "Si se encuentra $user en el archivo $pathFile"
fi