#!/bin/bash
function aplicardesc () {
    echo "scale=2; $PRECIO*(1-$DESCUENTO/100)" | bc -l
    read -n 1 -p "Pulse una tecla para continuar... " TECLA
}
OPC=0
PRECIO=0
DESCUENTO=0
until [ $OPC = 4 ]; do
    clear
    echo "MENÃš"
    echo "1.- Introducir el precio"
    echo "2.- Introducir el descuento a aplicar"
    echo "3.- Calcular y mostrar el precio con el descuento ya aplicado"
    echo "4.- Salir"
    echo
    read -n 1 -p "Pulse una opciÃ³n... " OPC
    echo
    case $OPC in
        1) read -p "Introduzca el precio... " PRECIO;;
        2) read -p "Introduzca el descuento... " DESCUENTO;;
        3) aplicardesc;;
        4) echo "Gracias por usar el script...";;
    esac
done
