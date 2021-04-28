#!/bin/bash
clear 
function Formateo {
clear
VAL='0'
until [ $VAL = 3 ]; do
read  -p "¿Cómo quiere llamar el dipositivo? " DISP 
echo
VAL=$(expr match "$DISP" [f][d][0-1])
done
}
RESPUESTA='0'
until [ $RESPUESTA = "4" ] ;do 
 clear
 cat <<-EOF 
BUSCADOR DE USUARIOS
1  Formatear
2  Montar
3  Desmontar
4  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
case $RESPUESTA in 
      1)Formateo; sudo fdformat /dev/$DISP
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       2)Formateo; sudo mount /dev/$DISP /mnt
      echo "Se ha montado el dispositivo"
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
       3)Formateo; sudo umount /dev/$DISP
      echo "Se ha desmontado el dispositivo"
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      4)echo "Adiós y gracias por su visita"
      echo;;
      *)echo "no se que signo es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
esac
done 


