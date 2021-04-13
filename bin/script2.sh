#!/bin/bash
clear
read -p "¿Cual es tu nombre?" NOMBRE
read -p "¿Cual es tu edad?" EDAD
 NOMREMIN=$(echo $NOMBRE | tr [A-Z] [a-z])
if [ $NOMREMIN = "franco" ]; then 
 echo "Hola $NOMBRE que tal?"
 else 
 echo "Lo siento $NOMBRE, no le conozco"
 fi
