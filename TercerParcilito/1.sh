#!/bin/bash

n=$#

echo "El nombre del script es $0"
echo "Se ha recibido $n argumentos"

i=$n
for arg in "$@"
do
    echo "$i"
    i=$((i-1))
done