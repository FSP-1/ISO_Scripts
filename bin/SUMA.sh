#!/bin/bash
clear
function SUM {
SUMA=$[$a+$b | bc -l ]
}
function RES {
RES=$[($a-$b) | bc -l ]
           
}
function MUL {
MUL=$[($a*$b) | bc -l ]
}
function DIV {
DIV=$[($a/$b) | bc -l ]
}
RESPUESTA=0
until [ $RESPUESTA = "6" ]; do
cat <<EOF
LISTA DE OPERACIONES
1 INTRODUCIR LOS NÚMEROS
2 SUMAR
3 RESTAR
4 MULTIPLICAR
5 DIVIDIR
6 Salir
EOF
read -p "Escoga una opcíon " RESPUESTA
echo
case $RESPUESTA in
1)
read -p "Introduzca un numero " a
read -p "Introduzca un numero " b
clear;;
2)SUM
  echo
echo "La cuenta de $a y $b es $SUMA"
echo
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear;;
3)RES
echo
echo "La cuenta de $a y $b es $RES"
echo
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
;;
4)
MUL
echo
echo "La cuenta de $a y $b es $MUL"
echo
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
;;
5)
 DIV
 echo
echo "La cuenta de $a y $b es $DIV"
echo
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
;;
6)
echo "Goodbay"
echo
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
clear
;;
*)echo "No existe esa opcíon"
echo
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
clear
;;
esac
done

