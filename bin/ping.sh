#!/bin/bash
clear
 
RESPUESTA='0'
until [ $RESPUESTA = "4" ] ;do 
clear
# Esta parte del script le muestra al usuario  la tabla con las opciones que puede elegir redireccionando el texto<<-EOF hacia al  comando  cat 
 cat <<-EOF
MENÚ DEL DÍA 
1  Escaner IP 
2  Ver lista de IP activas
3  Eliminar lista
4  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
# Creo una seccion case para ser posible escoger multiples opciones
case $RESPUESTA in 
      1)
      # Si el usuario escoge la opción nº1, el script ejecutara lo siguiente
      clear
# Obtengo el nº de caracteres del IP
LON=$(expr length "$1")
PATRON1=""
# Luego paso la IP por un chequeo, para ello creo un bucle donde me compreba  cada carater del IP (Por eso obtenemos primero el nº de caracteres)
for ((i=1;$i<=$LON;i++)); do
# Aqui comprueba que el numero sea numero [0-9] y que tenga [.]
PATRON1=$PATRON1[0-9,.]
done
# Ahora comparo la IP con el del chequeo donde si la IP tuviera una letra o parecido, no contaria ese carater.
VAL1=$(expr match "$1" "$PATRON1")
# Si el  nº de caracteres del IP chequeado no es igual al del  nº de caracteres del IP, no se hara el escaner de ip
if [ $VAL1 = $LON ] ;then
echo
clear
# Esto es para mostrar la parte que hace el escaner de IP
#-------------------------------------------
    echo "Empezando el scaner de IP"
    echo ""
# Envio la ip que ponemos al lado de ejecutar la ip en un archivo y de ese archivo, con awk, saco solamente los tres primeros Octetos de la IP
# Ej: Si pongo 10.10.10.10 me sacaria 10.10.10
    echo "$1" >> .a.txt
# Esto lo guardo en una variable
    IP1=$(awk 'BEGIN {FS=".";OFS="."}{print $1,$2,$3}' .a.txt) 
# Creo un bucle donde escanea la mascara /24 de la ip que hayas puesto y lo pongo en una variable
    for IP2 in $IP1.{1..254}; do 
# El bucle escaneara el rango ip comprobando que esta activa con el comando ping, como solamente nos interesa si esta activa o no, enviaremos los resultados adicionales del ping que queremos descartar al archivo null de /dev/null(Ahí se descartara toda información que se le añada)
    if ping $IP2 -w 1 -c 1 > /dev/null;then 
# Si esta activa lo mostrara por pantalla y lo guardara en un archivo llamado ip_activo.txt
    echo "La ip $IP2 esta activa"
    echo "$IP2 alive"  >> ip_activo.txt
    else 
# Si no esta activo, mostrara en la pantalla la ip inactiva
    echo "La ip $IP2 no esta activa" 
    fi; 
    done
#---------------------------------------------
echo
else
# Esta sección es para comprobar que funciona el chequeo
echo "$PATRON1"
echo "$VAL1"
echo  "$LON"
echo "La IP $1 es incorrecto"
fi

      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      2) # Si el usuario escoge la opción nº2, el script mostrara la lista ip_activo.txt para ver las ip activas.
      cat  ip_activo.txt
       echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      3) # Si el usuario escoge la opción nº3, el script eliminara todos los ficheros que se haya creado en este script.
      rm ip_alive.txt
      rm .a.txt
      
       echo "La lista a sido eliminado"
       echo
             read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       ;;
      4)
      # Si el usuario escoge la opción nº4, el script rompera el bucle y se acabaria
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

