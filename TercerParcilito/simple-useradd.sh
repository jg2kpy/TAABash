#!/bin/bash

echo "Inicio simple-useradd.sh"

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

echo "A que grupo desea agregar al usuario?"
read grupo

if [ ! -z `grep $grupo /etc/group` ] 
then
    echo "Este grupo no existe, agregando a la lista de grupos"
    #sudo groupadd grupo
fi

echo "Un comentario sobre el usuario"
read -e comentario
echo "El shell que desea usar"
read shell
echo "Fecha de expiracion de la cuenta formato YYYY-MM-DD"
read fecha
echo "Lista de los grupos a agregarse separados por coma, o solo precione enter"
read grupos

if [ -z $grupos ]
then
    #sudo useradd -gcse $grupo $username $comentario $shell $fecha
else
    #sudo useradd -gcseG $grupo $username $comentario $shell $fecha $grupos
fi

echo "Usuario agregado con exito"