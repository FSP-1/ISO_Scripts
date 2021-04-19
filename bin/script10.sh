#!/bin/bash
RESPUESTA=""
while [ "$RESPUESTA" != "2" ];
do  clear
  cat <<-EOF
MENÚ DE BUSQUEDA DE FICHEROS
1  Buscar el fichero
2  Salir
EOF
  read -p "Escoga una opción " RESPUESTA

  case $RESPUESTA in
    1)echo "Introduzca los caracteres del fichero que quiere buscar"
    read  CARACT
    if [ $CARACT ] 
    then
    find / ~/ -name "$CARACT*" 
    echo "Busqueda hecha"
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA
else 
    echo "No existe el fichero"
    read -p 'Pulsa cualquier tecla para continuar ' PAUSA
fi;;
    2) echo 
    echo "Adiós y gracias por su visita"
      echo;;
    *) echo "Debe escoger una opción válida";;
  esac
done
