#!/bin/bash

if [ $# -eq 1 ]
then
    username=$1
else
    echo "Error args, ejecute el script con un solo argumento"
    exit -1
fi

if [ ! -z `grep $username /etc/passwd` ] 
then
    echo "Este usuario ya existe"
    exit -1
fi