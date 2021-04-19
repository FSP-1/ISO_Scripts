#!/bin/bash
clear
if [ $# = 1 ] || [ $# = 2 ] ; then
 if test -d $HOME/$1; then
 echo "Es un directorio"
 if test -e $HOME/$1/$2; then
  echo "Es un fichero"
 file $HOME/$1/$2
 else
 echo "No existe el fichero"
 fi
 else
 echo "No existe el directorio"
 fi
else
 echo "No ha pasado el número correcto de argumentos"
fi
