#!/bin/bash
clear
read -p "Introduzca tu DNI (Solo Numeros) " NUMERO
read -p "Introduzca tu DNI (Solo Letras) " LETRA
LETRA=$(echo $LETRA | tr [a-z] [A-Z])
declare -a DNI=( T R W A G M Y F P D X B N J Z S Q V H L C K E )
POS=$[$NUMERO%23]
CHECK=${DNI[$POS]}
if [ $LETRA = $CHECK ]; then
echo "El DNI es correcto"
else
echo "Tu $DNI  DNI es incorrecto"
fi

