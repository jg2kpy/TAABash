#!/bin/bash

start(){
    sudo su -c "nohup ./$1 > /var/log/$1.log & echo \$! > '/var/run/$1.pid'"
}

stop(){
    pkill $1
}

restart(){
    stop $1
    start $1
}

if [ $# -ne 2 ];
then
    echo "Usage: $0 <nombre_demonio> <accion>"
    exit -1
fi

if [ $2 == "start" ];then
    start $1
elif [ $2 == "stop" ];then
    stop $1
elif [ $2 == "restart" ];then
    restart $1
else
    echo "Esta accion no existe"
fi