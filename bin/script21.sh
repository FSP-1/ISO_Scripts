#!/bin/bash
clear
read -p "Introduzca tu DNI (Solo Numeros) " NUM
read -p "Introduzca tu DNI (Solo Letras) " LET
VAL=$(expr match "$NUM" [0-9])
LET=$(echo $LET | tr [A-Z] [a-z])
declare -a DNI=( T R W A G M Y F P D X B N J Z S Q V H L C K E)

L=$[$NUM%23]
CHECK=${DNI[$L]}
if [ $LET = $CHECK ]; then
echo "El DNI es correcto"
else
echo "Tu $DNI $L DNI es incorrecto"
fi
