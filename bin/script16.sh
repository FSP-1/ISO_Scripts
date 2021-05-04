#!/bin/bash
clear
read -n 9 -p 'introduzca un número de teléfono ' NUM
echo
VAL=$(expr match "$NUM" [6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])
if [ $VAL = 9 ]; then
echo "El $NUM es un teléfono correcto"
else
echo "El $NUM es un teléfono incorrecto"
fi
