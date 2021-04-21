#!/bin/bash
RESPUESTA='0'
until [ $RESPUESTA = "4" ] ;do clear
 cat <<-EOF
MENÚ DEL DÍA 
1  Primer plato
2  Segundo plato
3  Postre
4  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
case $RESPUESTA in 
      1)echo 'Has elegido Primer plato'
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      2)echo 'Has elegido Segundo plato'
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
      3)echo 'Has elegido Postre'
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
      4)echo "Adiós y gracias por su visita"
      echo;;
      *)echo "no se que signo es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
esac
done 
