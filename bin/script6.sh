#!/bin/bash
clear
CLAVE=""
while [ "$CLAVE" != "lol" ]; do
read -p "Introduce la contraseña? " CLAVE
 if [ "$CLAVE" = "lol" ]; then
 echo "Contraseña correcta..."
 else
 echo "Contraseña no valida..."
 fi
done
