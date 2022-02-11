#!/bin/bash
# Creo una function para ordenar mejor el script
function Datos {
# Esta función solamente guarda los datos del usuario que pones tu en un fichero
read -p "Introduzca tu nombre " nombre
read -p "Introduzca tu primer apellido " apellido1
read -p "Introduzca tu segundo apellido " apellido2
read -p "Introduzca tu dni " DNI
read -p "Introduzca tu email " email
echo "$nombre $apellido1 $apellido2 $DNI $email"
      echo "$nombre;$apellido1;$apellido2;$DNI;$email" >> cliente.txt
      # Esta parte es para el loginUser
      echo "$nombre" >> .a.txt
      echo "$apellido1" >> .b.txt
      echo "$apellido2" >> .c.txt
}
function csv {
# La función csv cambia las ";" por ":" con el comando tr con la opción -s (Esto hace poder cambiar los caracteres)
tr -s ";" ":" < cliente.txt | tee cliente.csv

}
function ficheroDoble {
# Esta parte separa el fichero en dos, uno con el nombre del cliente y otro con sus datos
# Esto es posible gracias al comando awk donde le indico con FS donde tiene que leer y OFS que carateres poner entre espacios
# Y por ultimo con print que frases quiero tener
# Luego cada parte lo envio a un fichero con el comando tee
awk 'BEGIN{FS=";"; OFS=";"} {print $1,$2,$3}'  cliente.txt | tee nom_cli.txt
awk 'BEGIN{FS=";"; OFS=";"} {print $4,$5}'  cliente.txt | tee contacto_cli.txt

}
function loginUser {
# Separo los caracteres que quiero tener de las varibles nombre apellido1 apellido2
   cat .a.txt | cut -c1-1 >> .cut_a.txt
   cat .b.txt | cut -c1-3  >> .cut_b.txt
   cat .c.txt | cut -c1-3  >> .cut_c.txt
# Luego uno los ficheros cortados en un solo fichero
 paste .cut_a.txt .cut_b.txt .cut_c.txt >> loginUser1.txt
# Al unirlos habra un espacio entre carateres, para eliminarlos usamos el comando awk con la opcion OFS en blanco, asi cuando el comando awk mire el archivo, separara los caracteres con nada.
 awk 'BEGIN{ OFS=""} {print $1,$2,$3}' loginUser1.txt >> loginUser2.txt
# Por ultimo, paso todos los caracteres a letra chiquita
 cat loginUser2.txt | tr '[:upper:]' '[:lower:]' | tee loginUser3.txt


}
#Creo una tabla donde te quedarias en el script hasta que pulses la opción nº7
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
      # Si el usuario escoge la opción nº1, el script ejecutara la función Datos
      clear
      Datos;
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      2) # Si el usuario escoge la opción nº2, el script mostrara la lista clientes.txt para ver los datos del cliente.
      cat  cliente.txt
       echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      3) # Si el usuario escoge la opción nº3, el script eliminara todos los ficheros que se haya creado en este script.
      rm cliente.txt
      rm cliente.csv
      rm nom_cli.txt
      rm contacto_cli.txt
      rm .a.txt
      rm .b.txt
      rm .c.txt
      rm .cut_a.txt
      rm .cut_b.txt
      rm .cut_c.txt
      rm loginUser1.txt
      rm loginUser2.txt
      rm loginUser3.txt
      
       echo "La lista a sido eliminado"
       echo
             read -p 'Pulsa cualquier tecla para continuar ' PAUSA
       ;;
      4)
      # Si el usuario escoge la opción nº4, el script ejecutara la función cvs
      csv;
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
        5)
      # Si el usuario escoge la opción nº5, el script ejecutara la función ficheroDoble
      ficheroDoble;
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
        6)
      # Si el usuario escoge la opción nº6, el script ejecutara la función loginUser
      loginUser; 
      echo
      read -p 'Pulsa cualquier tecla para continuar ' PAUSA
      ;;
      7)
      # Si el usuario escoge la opción nº7, el script rompera el bucle y se acabaria
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
