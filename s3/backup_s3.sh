#!/bin/bash
DIRECTORIO=$1
BUCKET=$2
TIMESTAMP=$(date +%F_%H-%M-%S)
ARCHIVO="backup_$TIMESTAMP.tar.gz"

# Validar directorio
if [ ! -d "$DIRECTORIO" ]; then
  echo "Error: el directorio $DIRECTORIO no existe"
  exit 1
fi

# Comprimir archivos
tar -czf $ARCHIVO $DIRECTORIO

# Subir a S3
aws s3 cp $ARCHIVO s3://$BUCKET/

# Generar log
echo "$(date) - Respaldo $ARCHIVO enviado a $BUCKET" >> logs/backup.log
