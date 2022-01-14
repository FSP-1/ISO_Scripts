#!/bin/bash
# Creo una function para ordenar mejor el script
function multi {
# Limpio la pantalla"
clear
# Le pido al usuario un numero
read -p "Introduzca un numero" a

# Obtengo el nº de caracteres del numero
LON=$(expr length "$a")
PATRON1=""
# Luego paso el numero por un chequeo, para ello creo un bucle donde me compreba  cada carater del numero (Por eso obtenemos primero el nº de caracteres)
for ((i=1;$i<=$LON;i++)); do
# Aqui comprueba que el numero sea numero [0-9] y en este que el numero pueda ser negativo [-]
PATRON1=$PATRON1[0-9,-]
done
# Ahora comparo el numero con el del chequeo donde si el numero tuviera una letra o parecido, no contaria ese carater.
VAL1=$(expr match "$a" "$PATRON1")
# Si el  nº de caracteres del numero chequeado no es igual al del  nº de caracteres del numero, no se haria la cuenta de multiplicar
if [ $VAL1 = $LON ] ;then
echo
# Esta sección es para comprobar que funciona el chequeo
echo "$PATRON1"
echo "$VAL1"
echo  "$LON"
echo "El numero $a es correcto "
echo
# Creo un bucle donde se repite 10 veces (0 al 10) i=0;$i<=10, donde el $i se incremente 1 a 1 hasta llegar el 10
# En este bucle multiplico del 0 hasta 10 por el numero que pone el usuario $(($a * $i))
# Por último pongo el comando sleep 0.1 para que te lo muestre poco a poco
for ((i=1;$i<=10;i++));do
echo "$a x $i =" $(($a * $i))
sleep 0.1
done
else
# Esta sección es para comprobar que funciona el chequeo
echo "$PATRON1"
echo "$VAL1"
echo  "$LON"
echo "El numero $a es incorrecto"
fi

}
#Creo una tabla donde te quedarias en el script hasta que pulses la opción nº2
RESPUESTA='0'
until [ $RESPUESTA = "2" ] ;do 
clear
# Esta parte del script le muestra al usuario  la tabla con las opciones que puede elegir redireccionando el texto<<-EOF hacia al  comando  cat 
 cat <<-EOF
MENÚ DEL DÍA 
1  Tabla de multiplicar de 10
2  Salir
EOF
echo
read -p 'Escoga una opcion ' RESPUESTA
echo 
# Creo una seccion case para ser posible escoger multiples opciones
case $RESPUESTA in 
      1)
      # Si el usuario escoge la opción nº1, el script ejecutara la función multi
      multi;
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      2)
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
