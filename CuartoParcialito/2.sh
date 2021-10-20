#!/bin/bash

estaSeguro(){
    echo "Esta accion hara que el proceso termine y el dispositivo sea inutilizable"

    echo "Script terminado abruptamente"

    echo "Esta seguro que desea terminar? [Y/n]"
    read respuesta
    if [[ $respuesta == "Y" ]];
    then
        echo "Script terminado abruptamente"
        exit -1
    fi
}

echo "Creando imagen de arranque..."

trap estaSeguro SIGINT SIGTERM SIGSTOP

if [ $# -eq 2 ]
then
    iso=$1
    medio=$2
else
    echo "Introduza path del iso: "
    read iso
    
    echo "Introduza path del dispositivo: "
    read medio
fi

if [[ ! -f $iso ]]
then
    echo "No es un fichero"
    #exit -1
fi

if [[ ! -f $medio ]]
then
    echo "El dispositivo no existe o no esta montando"
    #exit -1
fi

tree /
#sudo dd if=$iso of=$medio bs=1M status=progress
echo "Ejecutando proceso..."

echo "Scrip terminado exitosamente"