#!/bin/bash

services=`systemctl list-units --type=service --state=running`
#ps -ax

if echo $services | grep -v grep | grep $1 > /dev/null
then
    echo "El daemon $1 esta en ejecucion"
else
    echo "El daemon $1 no esta en ejecucion"
fi