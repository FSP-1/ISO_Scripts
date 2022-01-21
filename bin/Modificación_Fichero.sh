#!/bin/bash
# Creo una function para ordenar mejor el script
function Datos {

read -p "Introduzca tu nombre " nombre
read -p "Introduzca tu primer apellido " apellido1
read -p "Introduzca tu segundo apellido " apellido2
read -p "Introduzca tu dni " DNI
read -p "Introduzca tu email " email
echo "$nombre $apellido1 $apellido2 $DNI $email"
      echo "$nombre;$apellido1;$apellido2;$DNI;$email" >> cliente.txt
}
function csv {
tr -s ";" ":" < cliente.txt | tee cliente.csv

}
function ficheroDoble {

awk 'BEGIN{FS=";"; OFS=";"} {print $1,$2,$3}'  cliente.txt | tee nom_cli.txt
awk 'BEGIN{FS=";"; OFS=";"} {print $4,$5}'  cliente.txt | tee contacto_cli.txt

}
function loginUser {
while IFS=: read -r $nombre $apellido1 $apellido2
do
  xlogin="$(echo $nombre | cut -c1-1)$(echo $apellido1|cut -c1-3)$(echo $apellido2|cut -c1-3)"
  Letra_chiquita=$(echo $xlogin | tr '[:upper:]' '[:lower:]')
  echo $Letra_chiquita>>xlogin.txt
done 

}
#Creo una tabla donde te quedarias en el script hasta que pulses la opción nº2
RESPUESTA='0'
until [ $RESPUESTA = "7" ] ;do 
clear
# Esta parte del script le muestra al usuario  la tabla con las opciones que puede elegir redireccionando el texto<<-EOF hacia al  comando  cat 
 cat <<-EOF
MENÚ DEL DÍA 
1  Añadir Datos
2  Ver lista
3  Eliminar lista
4  Obtener csv
5  Obtener ficheros nombre y contacto
6  Crear loginUser
7  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
# Creo una seccion case para ser posible escoger multiples opciones
case $RESPUESTA in 
      1)
      # Si el usuario escoge la opción nº1, el script ejecutara la función multi
      Datos;
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      2) cat  cliente.txt
       echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      3)rm cliente.txt
      rm cliente.csv
      rm nom_cli.txt
      rm contacto_cli.txt
       echo "La lista a sido eliminado"
       echo
             read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       ;;
      4)
      # Si el usuario escoge la opción nº1, el script ejecutara la función multi
      csv;
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
        5)
      # Si el usuario escoge la opción nº1, el script ejecutara la función multi
      ficheroDoble;
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
        6)
      # Si el usuario escoge la opción nº1, el script ejecutara la función multi
      loginUser; 
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      7)
      # Si el usuario escoge la opción nº2, el script rompera el bucle y se acabaria
      echo "Adiós y gracias por su visita"
      echo
       read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       clear
       ;;
      *)
      # Si el usuario no escoge cualquira de las opciones que haya, el script le dira al usuario que no sabe que opción le esta dando y volvera de nuevo al la tabla
      echo "no se que opción es ese"
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA;;
esac
done 
