#!/bin/bash
clear
function Usuario {
clear
read -p "Introduzca un nombre " usu
echo
finger $usu
}
RESPUESTA='0'
until [ $RESPUESTA = "2" ] ;do clear
 cat <<-EOF 
BUSCADOR DE USUARIOS
1  Buscar el Usuario
2  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
case $RESPUESTA in 
      1)Usuario
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      2)echo "Adiós y gracias por su visita"
      echo;;
      *)echo "no se que signo es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
esac
done 


