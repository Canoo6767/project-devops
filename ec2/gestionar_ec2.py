def iniciar(instance_id):
    ec2.start_instances(InstanceIds=[instance_id])
    print(f"Iniciando {instance_id}")

def detener(instance_id):
    ec2.stop_instances(InstanceIds=[instance_id])
    print(f"Deteniendo {instance_id}")

def terminar(instance_id):
    ec2.terminate_instances(InstanceIds=[instance_id])
    print(f"Terminando {instance_id}")

if __name__ == "__main__":
    accion = sys.argv[1]
    if accion == "listar":
        listar()
    elif accion == "iniciar":
        iniciar(sys.argv[2])
    elif accion == "detener":
        detener(sys.argv[2])
    elif accion == "terminar":
        terminar(sys.argv[2])
