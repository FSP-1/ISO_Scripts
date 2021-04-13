#!/bin/bash
clear
if [ $# = 2 ]; then
if test -d $HOME/$1; then  
if test .e $HOME/$1/$2; then
  file $HOME/$1/$2
  else 
    echo "No existe el fichero"
  fi
else 
 echo "No existe el directorio"
fi
else
echo "No ha pasado el numero de argumentos"
