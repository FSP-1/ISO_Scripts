#!/bin/bash
clear
read -p "Introduzca un numero " a
for ((i=$a;$i>=0;i--)); do
echo " $i"
sleep 0.01
done
