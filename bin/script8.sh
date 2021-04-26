#!/bin/bash
if test -d $HOME/copias; then
echo "Existe la carpeta copias"
else 
mdkir $HOME/copias
echo "Creando la carpeta copias"
fi
echo 
RESPUESTA=""
while [ "$RESPUESTA" != "2" ];
do  clear
  cat <<-EOF
MENÚ DE COPIAS DE SEGURIDAD
1  Copia manual de un fichero
2  Salir
EOF
  read -p "Escoga una opción " RESPUESTA

  case $RESPUESTA in
    1)echo "Introduzca el archivo donde vaya a empaquetar y comprimir el fichero"
    read  ARCHIVO
    echo "Introduzca el directorio de origen del fichero que quiere empaquetar y comprimir"
    read  RUTA
  
        if test -d ~/$RUTA -a $RUTA ||  $ARCHIVO  
            then
                tar cvzf ~/copias/$ARCHIVO.tar.gz ~/$RUTA  
                echo "Copia de seguridad hecho"
                read -p 'Pulsa cualquier tecla para continuar ' PAUSA
        else
            echo "Se ha equivocado"
            read -p 'Pulsa cualquier tecla para continuar ' PAUSA
        fi;;
    2) echo 
    echo "Adiós y gracias por su visita"
      echo;;
    *) echo "Debe escoger una opción válida";;
  esac
done
