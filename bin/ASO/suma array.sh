#!/bin/bash
clear
function Cargar_Array {
read -p "Cuantos Valores quieres sumar " a
for ((i=1;$i<=$a;i++)); do 
miArray[$i]=$i
done
echo ""
}
function Cambiar_Array {
echo "De un valor a cada posicion del array que le hayas puesto antes"
echo ""
for cambio in ${miArray[@]}; do
read -p "Introduzca un valor " v
miArray[$cambio]=$v
done
echo ""
}
function Sumar_Aarray {
suma=0
for numero in " ${miArray[@]}"; do
  suma=$(echo "$suma + $numero" | bc)
done
echo ""
}
RESPUESTA=0
until [ $RESPUESTA = "3" ]; do
cat <<EOF
LISTA DE OPERACIONES
1 Sumar arry
2 Eliminar Array 
3 Salir
EOF
read -p "Escoga una opcíon " RESPUESTA
echo
case $RESPUESTA in
1)
clear
Cargar_Array;
Cambiar_Array;
Sumar_Aarray;
echo "La suma de todos los digitos es: $suma"
echo
read -p 'Presiona cualquier tecla para acabar' PAUSA
clear
;;
2)

echo "El array ${miArray[@]} ha sido eliminado"
unset miArray
echo
read -p 'Pulsa cualquier tecla para continuar ' PAUSA
clear
;;
3)
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
