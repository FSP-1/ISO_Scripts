#!/bin/bash

#Remoto
USUARIO_REMOTO="a"
IP_HOST_REMOTO="10.33.5.11"
DIRECTORIO_REMOTO="carpeta_share"
RUTA_COMPLETA_DIRECTORIO_REMOTO="/home/$USUARIO_REMOTO/$DIRECTORIO_REMOTO/"

#Local
USUARIO_LOCAL="rabbit"
DIRECTORIO_LOCAL="prueba"
RUTA_COMPLETA_DIRECTORIO_LOCAL="/home/$USUARIO_LOCAL/$DIRECTORIO_LOCAL/"

FECHA_Y_HORA=`date "+%d-%m-%y_%H-%M-%S"`

# log
RUTA_LOG="/home/$USUARIO_LOCAL/rsync.txt"

echo "[$FECHA_Y_HORA]Comenzando sincronizacion..." >> $RUTA_LOG

# Sincronización entre maquina local y remota
rsync -azv --delete $USUARIO_REMOTO@$IP_HOST_REMOTO:$RUTA_COMPLETA_DIRECTORIO_REMOTO $RUTA_COMPLETA_DIRECTORIO_LOCAL >> $RUTA_LOG
