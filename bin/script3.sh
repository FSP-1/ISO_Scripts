#!/bin/bash
clear
read -p "Introduzca nqpa " NOMBRE_FICHERO
for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do
ls -ld $NOMBRE_FICHERO
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
7       Salir
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
          1) for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod g+r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 5-7
                      done;;
          2)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                      chmod u+r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 2-4
                      done;;
          3)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod o+r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
                      done;;
          4)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod a+r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
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
          1) for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod g-r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 5-7
                      done;;
          2)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                      chmod u-r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 2-4
                      done;;
          3)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod o-r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
                      done;;
          4)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod a-r $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
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
          1) for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod g+w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 5-7
                      done;;
          2)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                      chmod u+w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 2-4
                      done;;
          3)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod o+w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
                      done;;
          4)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod a+w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
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
          1) for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod g-w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 5-7
                      done;;
          2)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                      chmod u-w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 2-4
                      done;;
          3)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod o-w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
                      done;;
          4)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod a-w $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
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
          1) for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod g+x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 5-7
                      done;;
          2)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                      chmod u+x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 2-4
                      done;;
          3)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod o+x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
                      done;;
          4)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod a+x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
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
          1) for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod g-x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 5-7
                      done;;
          2)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                      chmod u-x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 2-4
                      done;;
          3)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod o-x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
                      done;;
          4)for NOMBRE_FICHERO in $NOMBRE_FICHERO ;do 
                     chmod a-x $NOMBRE_FICHERO 
                     ls -ld $NOMBRE_FICHERO | cut -c 8-10
                      done;;
esac;;
    7) echo "Hasta luego"
     exit;;
    *)echo "Por favor ponga una opción";;                 
esac
done
