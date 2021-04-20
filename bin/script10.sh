#!/bin/bash
RESPUESTA=""
while [ "$RESPUESTA" != "3" ];
do  clear
  cat <<-EOF
MENÚ DE BUSQUEDA DE FICHEROS
1  Buscar los caracteres del fichero
2  Buscar los caracteres en el fichero
3  Salir
EOF
  read -p "Escoga una opción " RESPUESTA
  echo

  case $RESPUESTA in
    1)clear
    echo "Introduzca los caracteres del fichero que quiere buscar"
    read  CARACT
    if [ $CARACT ] 
    then
    echo
    find  ~/ -name "$CARACT*" 
    echo
    echo "Busqueda hecha"
    echo
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA
else 
    echo "No existe el fichero"
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA
fi;;
    2)clear
    echo "Introduzca los caracteres que quiere buscar en el fichero"
    read  CARACT2
    if [ $CARACT2 ] 
    then
    echo
    grep -r "$CARACT2" $HOME/* | more
    echo
    echo "Busqueda hecha"
    echo
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA
else 
    echo "No existe el fichero"
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA
fi;;
    3)echo "Adiós y gracias por su visita"
      echo;;
    *)echo 
    echo "Debe escoger una opción válida"
    echo
    read -p '' PAUSA;;
  esac
done
