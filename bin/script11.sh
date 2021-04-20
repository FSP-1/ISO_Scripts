#!/bin/bash
clear
read -p "Introduzca un numero " a
read i
echo "Estos son los pares"
for ((i=0;$i<=$a;i = i + 2)); do
echo "$i"
done
echo
echo "Estos son los impares"
for ((i=1;$i<=$a;i = i + 2)); do
echo "$i"
done
echo
