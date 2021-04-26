#!/bin/bash
clear
read -p "Introduzca el nombre del archivo o directorio que quiera saber los permisos... " RUTA

U=$(ls -ld ~/$RUTA | cut -c 2-4)
G=$(ls -ld ~/$RUTA | cut -c 5-7)
O=$(ls -ld ~/$RUTA | cut -c 8-10)
if test -e ~/$RUTA; then
echo "Usuario --> $U"
echo "Grupo   --> $G"
echo "Otro    --> $O"
echo
 echo "Donde r=lectura, w=escritura y x=ejecución o entrada"
 else
 echo "No existe el fichero"
 fi


                 
