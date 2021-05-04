#!/bin/bash
clear
read -p "Introduce tu nombre " NOMBRE
if test -n $NOMBRE; then  
    echo "Hola $NOMBRE"
 else 
    echo "No ha intrducido tu nombre"
fi
