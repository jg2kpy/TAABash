#!/bin/bash

n=$#

if [ $n -eq 0 ]
then
    echo "Introduza su edad: "
    read edad
elif [ $n -eq 1 ]
then
    edad=$1
else
    echo "Error args"
    exit -1
fi

if [ $edad -ge 20 ] 
then
    echo "Usted puede beber alcohol"
else
    echo "Debe esperar $[20-edad] ano para poder ingerir alcohol"
fi