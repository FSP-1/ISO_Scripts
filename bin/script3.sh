#!/bin/bash
clear
read -p "Introduzca Archivo O Carpeta " RUTA
r=$(ls -ld $RUTA | cut -c 2-4)
w=$(ls -ld $RUTA | cut -c 5-7)
x=$(ls -ld $RUTA | cut -c 8-10)
for RUTA in $RUTA ;do
echo "Usuario --> $r"
echo "Grupo   --> $w"
echo "Otro    --> $x"
done
while true
do
  cat <<-EOF
CAMBIO DE LOS PERMISOS
1       Añadir permiso de leer
2       Quitar permiso de leer
3       Añadir permiso de escribir       
4       Quitar permiso de escribir
5       Añadir permiso de ejecutar  
6       Quitar permiso de ejecutar
7       Ver
8       Salir
EOF
read -p "Indica el permiso que quiera modificar " REPUESTA
echo ""
clear
case $REPUESTA in 

    1) cat <<-EOF
PARA QUE USUARIOS
1       Para Grupo
2       Para Usuario
3       Para Otro       
4       Para Todos
5       Salir
EOF
        read -p "Indica para grupo, Usuario, Otro o Todos " REPUESTA2
        echo ""
        
        case $REPUESTA2 in
          1) for RUTA in $RUTA ;do 
                     chmod g+r $RUTA 
                     ls -ld $RUTA | cut -c 5-7
                      done;;
          2)for RUTA in $RUTA ;do 
                      chmod u+r $RUTA 
                     ls -ld $RUTA | cut -c 2-4
                      done;;
          3)for RUTA in $RUTA ;do 
                     chmod o+r $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
          4)for RUTA in $RUTA ;do 
                     chmod a+r $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
                      
esac;;

    2) cat <<-EOF
PARA QUE USUARIOS
1       Para Grupo
2       Para Usuario
3       Para Otro       
4       Para Todos
5       Salir
EOF
        read -p "Indica para grupo, Usuario, Otro o Todos " REPUESTA3
        echo ""
        
        case $REPUESTA3 in
          1) for RUTA in $RUTA ;do 
                     chmod g-r $RUTA 
                     ls -ld $RUTA | cut -c 5-7
                      done;;
          2)for RUTA in $RUTA ;do 
                      chmod u-r $RUTA 
                     ls -ld $RUTA | cut -c 2-4
                      done;;
          3)for RUTA in $RUTA ;do 
                     chmod o-r $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
          4)for RUTA in $RUTA ;do 
                     chmod a-r $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
                      
esac;;
                     
    3)cat <<-EOF
PARA QUE USUARIOS
1       Para Grupo
2       Para Usuario
3       Para Otro       
4       Para Todos
5       Salir
EOF
        read -p "Indica para grupo, Usuario, Otro o Todos " REPUESTA4
        echo ""
        
        case $REPUESTA4 in
          1) for RUTA in $RUTA ;do 
                     chmod g+w $RUTA 
                     ls -ld $RUTA | cut -c 5-7
                      done;;
          2)for RUTA in $RUTA ;do 
                      chmod u+w $RUTA 
                     ls -ld $RUTA | cut -c 2-4
                      done;;
          3)for RUTA in $RUTA ;do 
                     chmod o+w $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
          4)for RUTA in $RUTA ;do 
                     chmod a+w $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
                      
esac;;
    4)cat <<-EOF
PARA QUE USUARIOS
1       Para Grupo
2       Para Usuario
3       Para Otro       
4       Para Todos
5       Salir
EOF
        read -p "Indica para grupo, Usuario, Otro o Todos " REPUESTA5
        echo ""
        
        case $REPUESTA5 in
          1) for RUTA in $RUTA ;do 
                     chmod g-w $RUTA 
                     ls -ld $RUTA | cut -c 5-7
                      done;;
          2)for RUTA in $RUTA ;do 
                      chmod u-w $RUTA 
                     ls -ld $RUTA | cut -c 2-4
                      done;;
          3)for RUTA in $RUTA ;do 
                     chmod o-w $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
          4)for RUTA in $RUTA ;do 
                     chmod a-w $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
                      
esac;;
    5)cat <<-EOF
PARA QUE USUARIOS
1       Para Grupo
2       Para Usuario
3       Para Otro       
4       Para Todos
5       Salir
EOF
        read -p "Indica para grupo, Usuario, Otro o Todos " REPUESTA6
        echo ""
        
        case $REPUESTA6 in
          1) for RUTA in $RUTA ;do 
                     chmod g+x $RUTA 
                     ls -ld $RUTA | cut -c 5-7
                      done;;
          2)for RUTA in $RUTA ;do 
                      chmod u+x $RUTA 
                     ls -ld $RUTA | cut -c 2-4
                      done;;
          3)for RUTA in $RUTA ;do 
                     chmod o+x $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
          4)for RUTA in $RUTA ;do 
                     chmod a+x $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
                      
esac;;
    6)cat <<-EOF
PARA QUE USUARIOS
1       Para Grupo
2       Para Usuario
3       Para Otro       
4       Para Todos
5       Salir
EOF
        read -p "Indica para grupo, Usuario, Otro o Todos " REPUESTA7
        echo ""
        
        case $REPUESTA7 in
          1) for RUTA in $RUTA ;do 
                     chmod g-x $RUTA 
                     ls -ld $RUTA | cut -c 5-7
                      done;;
          2)for RUTA in $RUTA ;do 
                      chmod u-x $RUTA 
                     ls -ld $RUTA | cut -c 2-4
                      done;;
          3)for RUTA in $RUTA ;do 
                     chmod o-x $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
          4)for RUTA in $RUTA ;do 
                     chmod a-x $RUTA 
                     ls -ld $RUTA | cut -c 8-10
                      done;;
esac;;
    7)for RUTA in $RUTA ;do
echo "Usuario --> $r"
echo "Grupo   --> $w"
echo "Otro    --> $x"
done;;
    8) echo "Hasta luego"
     exit;;
    *)echo "Por favor ponga una opción";;                 
esac
done
