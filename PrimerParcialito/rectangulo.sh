#!/bin/bash

#Limpiamos la consola
clear

#Inicializacion y asignacion de las variables
ANCHO=10 #Ancho
LARGO=15 #Largo
#Mostramos las variables en salida estandar
echo "El ancho es: $ANCHO"
echo "El largo es: $LARGO"
echo ""

echo "Calculando el area y el perimetro..."
PERIMETRO=$[2*$[ANCHO+LARGO]] #Calculo del perimetro
AREA=$[ANCHO*LARGO] #Calculo del area

echo "El perimetro es: $PERIMETRO" #Impresion del perimetro
echo "El area es: $AREA" #Impresion del area