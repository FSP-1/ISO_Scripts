#!/bin/bash
clear
function FACTORI {
read -p "Introduzca un numero " a
FACTORIAL=1
for ((i=1;$i<=$a;i++)); do
FACTORIAL=$(echo "$FACTORIAL*$i" | bc -l) 
done
}
function CHEK {
LON=$(expr length "$a")
PATRON1=""
for ((i=1;$i<=$LON;i++)); do
PATRON1=$PATRON1[0-9," "]
done
VAL1=$(expr match "$a" "$PATRON1")
if [ $VAL1 = $LON ] ;then
echo
echo "La factorial de $a es $FACTORIAL"
echo
sleep 1
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
else
echo
echo "El numero $a es incorrecto"
echo
sleep 1
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
fi
}
FACTORI
CHEK
