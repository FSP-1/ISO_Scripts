#!/bin/bash
clear
r=$(ls -ld $HOME/$1/$2 | cut -c 2-4)
w=$(ls -ld $HOME/$1/$2 | cut -c 5-7)
x=$(ls -ld $HOME/$1/$2 | cut -c 8-10)
if test -e $HOME/$1/$2; then
echo "Usuario --> $r"
echo "Grupo   --> $w"
echo "Otro    --> $x"
echo "El $r son los permisos de los Usuarios"
echo "El $w son los permisos de los Grupos"
echo "El $x son los permisos de los Otros"
 else
 echo "No existe el fichero"
 fi


                 
                   
