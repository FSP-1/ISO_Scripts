#!/bin/bash
clear
read -p "Introduzca un numero " a
if test $a; then
echo "El 33.67% de $a es :"
 echo "scale=2;($a*33.67)/100" | bc -l 
  echo "scale=1;($a*33.67)/100" | bc -l 

 echo
 else
 echo "No existe el fichero"
 fi
