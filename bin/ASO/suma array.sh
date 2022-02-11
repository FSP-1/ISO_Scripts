#!/bin/bash
clear
function SUM () {
arraynumero=({$a..$b})
for i in ${arraynumero[@]}  ;do
echo "$i"
done
SUMA=$[$a+$b | bc -l ]
}
RESPUESTA=0
until [ $RESPUESTA = "2" ]; do
cat <<EOF
LISTA DE OPERACIONES
1 SUMAR
2 Salir
EOF
read -p "Escoga una opcíon " RESPUESTA
echo
case $RESPUESTA in
1)
clear
read -p "Introduzca un numero " a
read -p "Introduzca un numero " b
SUM
  echo
echo "La cuenta de $a y $b es $SUMA"
echo
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
;;
2)
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
