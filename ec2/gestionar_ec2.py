import boto3, sys

ec2 = boto3.client('ec2')

def listar():
    response = ec2.describe_instances()
    for r in response['Reservations']:
        for i in r['Instances']:
            print(i['InstanceId'], i['State']['Name'])

if __name__ == "__main__":
    accion = sys.argv[1]
    if accion == "listar":
        listar()
