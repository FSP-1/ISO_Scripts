#!/bin/bash
clear
if [ $# = 1 ]; then
   if test -e $HOME/$1; then
     if test -d $HOME/$1; then
      echo "Es un directorio"
      ls -l $HOME/$1
    else
       echo "Es un fichero"
       file $HOME/$1
    fi
  else
   echo "No existe el directorio o fichero"
  fi
 else
  echo "No ha pasado el número correcto de argumentos"
fi
