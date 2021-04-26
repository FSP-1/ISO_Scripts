#!/bin/bash
clear
function Usuario {
clear
read -p "Introduzca un nombre " usu
echo
if [ $usu  = "asir"  ]; then
grep "$usu" /etc/passwd | cut -d: -f1
else 
echo 'El usuario que pusiste no existe' 
fi
}
RESPUESTA='0'
until [ $RESPUESTA = "2" ] ;do clear
 cat <<-EOF 
BUSCADOR EL USUARIO
1  Buscador de Usuarios
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


