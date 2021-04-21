#!/bin/bash
clear
FACTORIAL=1
read -p "Introduzca un numero " a
for ((i=0;$i<=$a;i++)); do
FACTORIAL=$[$FACTORIAL*$i] 
done
echo "La factorial de $a es $FACTORIAL"
