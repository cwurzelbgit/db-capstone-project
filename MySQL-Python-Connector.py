

import mysql.connector
import pandas as pd
from sqlalchemy import create_engine


hostname = 'XXXX'
username = 'XXXX'
password = 'XXXX'
database_name = 'littlelemondb'

# Establish connection to MySQL
connection = mysql.connector.connect(
    host=hostname,
    user=username,
    password=password,
    database=database_name 
)
cursor = connection.cursor()
show_tables_query = "SHOW tables"
cursor.execute(show_tables_query)

results = cursor.fetchall()
for i in results:
    print(i)
    
# Closing the connection
cursor.close()
