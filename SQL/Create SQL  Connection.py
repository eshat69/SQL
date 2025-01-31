import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="K@aplan001"
)

print(mydb)