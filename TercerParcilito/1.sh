#!/bin/bash

n=$#

echo "El nombre del script es $0"
echo "Se ha recibido $n argumentos"

LISTA=("$@")
i=$#-1
for arg in "$@"
do
    echo ${LISTA[$i]}
    i=$(($i-1))
done