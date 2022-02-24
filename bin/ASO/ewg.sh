#!/bin/bash

# Maquina remota donde guardaremos la carpeta
USUARIO_REMOTO="a"
IP_HOST_REMOTO="10.33.5.11"
DIRECTORIO_REMOTO="carpeta_copia"
RUTA_COMPLETA_DIRECTORIO_REMOTO="/home/$USUARIO_REMOTO/$DIRECTORIO_REMOTO/"

# Maquina local donde indicamos la carpeta que haremos copia
USUARIO_LOCAL="rabbit"
DIRECTORIO_LOCAL="carpeta_compartida"
RUTA_COMPLETA_DIRECTORIO_LOCAL="/home/$USUARIO_LOCAL/$DIRECTORIO_LOCAL/"

# Feacha y hora del dia que se hace la copia
FECHA_Y_HORA=`date "+%d-%m-%y %H-%M-%S"`

# Archivo log que indica el dia y hora que se hace la copia
RUTA_LOG="/home/$USUARIO_LOCAL/rsync.txt"
echo "" >> $RUTA_LOG
echo "[$FECHA_Y_HORA]Comenzando sincronizacion..." >> $RUTA_LOG

# Sincronización entre maquina local y remota
rsync -azv --delete $RUTA_COMPLETA_DIRECTORIO_LOCAL $USUARIO_REMOTO@$IP_HOST_REMOTO:$RUTA_COMPLETA_DIRECTORIO_REMOTO >> $RUTA_LOG

# Notificación
notify-send " Se ha echo la copia en la fecha $FECHA_Y_HORA, puedes mirarlo en "/home/$USUARIO_LOCAL/rsync.txt" "
