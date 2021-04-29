#!/bin/bash
clear
read -p "Introduzca tu DNI " NUM
read -p "Introduzca tu DNI " LET
declare -a L=( T R W A G M Y F P D X B N J Z S Q V H L C K E)
declare -a 

if [ $NUM < 0 || $NUM > 99999999 ]; then
echo "El DNI es incorrecto"
else
L=$[$NUM%23]
      echo "La Suma de los Vectores (AX + BX) es ${S[0]}"


var numero = prompt("Introduce tu número de DNI (sin la letra)");
var letra = prompt("Introduce la letra de tu DNI (en mayúsculas)");
letra = letra.toUpperCase();

if(numero < 0 || numero > 99999999) {
  alert("El número proporcionado no es válido");
}
else {
  var letraCalculada = letras[numero % 23];
  if(letraCalculada != letra) {
    alert("La letra o el número proporcionados no son correctos");
  }
  else {
    alert("El número de DNI y su letra son correctos");
  }
}
