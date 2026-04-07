#!/bin/bash
ACCION=$1
INSTANCE_ID=$2
DIRECTORIO=$3
BUCKET=$4

# Validar parámetros
if [ $# -lt 4 ]; then
  echo "Uso: $0 <accion> <instance_id> <directorio> <bucket>"
  exit 1
fi

# Ejecutar acción en EC2
python3 ec2/gestionar_ec2.py $ACCION $INSTANCE_ID

# Ejecutar respaldo en S3
bash s3/backup_s3.sh $DIRECTORIO $BUCKET

# Generar log de deploy
echo "$(date) - Acción $ACCION ejecutada en $INSTANCE_ID y respaldo enviado a $BUCKET" >> logs/deploy.log
