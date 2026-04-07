# Proyecto DevOps: EC2 + S3 + Deploy

## 📌 Descripción
Scripts para gestionar instancias EC2, respaldar datos en S3 y orquestar ambos procesos con un script de despliegue.

## 🚀 Scripts
- `ec2/gestionar_ec2.py`: listar, iniciar, detener y terminar instancias EC2.
- `s3/backup_s3.sh`: comprimir y respaldar directorios en S3.
- `deploy.sh`: orquestar acciones en EC2 y respaldos en S3.

## 🛠️ Uso
```bash
python3 ec2/gestionar_ec2.py listar
python3 ec2/gestionar_ec2.py iniciar i-0e393310d24d05df3
bash s3/backup_s3.sh ./data kenchi-devops-backup
./deploy.sh iniciar i-0e393310d24d05df3 ./data kenchi-devops-backup
