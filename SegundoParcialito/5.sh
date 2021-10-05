#!/bin/bash

if [ -z `grep $1 /etc/passwd` ] 
then
    echo "No se encuentra $1 en el archivo /etc/passwd"
else
    echo "Si se encuentra $1 en el archivo /etc/passwd"
fi