import psycopg2
import boto3
client = boto3.client('rds')
response = client.describe_db_engine_versions(
    DBParameterGroupFamily='',
    DefaultOnly=True,
    Engine='postgres',
    EngineVersion='',
    ListSupportedCharacterSets=False, #True,
)

print(response,"\n")

# To retrieve data from aws SSM

ssm = boto3.client('ssm')

parameter = ssm.get_parameter(Name = '/RDS/username')
parameter1 = ssm.get_parameter(Name = '/RDS/pwd', WithDecryption=True)
parameter2 = ssm.get_parameter(Name= '/RDS/port')

username = parameter['Parameter']['Value']
pwd = parameter1['Parameter']['Value']
prt = parameter2['Parameter']['Value']

#Postgres DB connection

engine = psycopg2.connect(
    database="incode",
    user=username,
    password=pwd,
    host="mydb.cw44aaqb8tg2.ap-south-1.rds.amazonaws.com",
    port=prt
)

print("Successfully Conneccted")


engine.close()
