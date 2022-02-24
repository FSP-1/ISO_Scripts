#!/bin/bash
# Sincronizar dos directorios con rsync
# @see https://parzibyte.me/blog
# @date 2018-08-21

# Algunas variables para cambiar rápidamente ;)

#Remoto
USUARIO_REMOTO="luis"
IP_HOST_REMOTO="192.168.1.88"
DIRECTORIO_REMOTO="cosas_importantes"
RUTA_COMPLETA_DIRECTORIO_REMOTO="/home/$USUARIO_REMOTO/$DIRECTORIO_REMOTO/"

#Local
USUARIO_LOCAL="luis_fake"
DIRECTORIO_LOCAL="sincronizado"
RUTA_COMPLETA_DIRECTORIO_LOCAL="/home/$USUARIO_LOCAL/$DIRECTORIO_LOCAL/"

FECHA_Y_HORA=`date "+%d-%m-%y_%H-%M-%S"`

# Un log, porque la vida sin logs no es nada
RUTA_LOG="/home/$USUARIO_LOCAL/rsync.txt"
#Ya sé que va con acento en la o pero no importa ahora
echo "[$FECHA_Y_HORA]Comenzando sincronizacion..." >> $RUTA_LOG
rsync -azv --delete $USUARIO_REMOTO@$IP_HOST_REMOTO:$RUTA_COMPLETA_DIRECTORIO_REMOTO $RUTA_COMPLETA_DIRECTORIO_LOCAL >> $RUTA_LOG
