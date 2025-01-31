import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL (without specifying the database)
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="K@aplan001"
    )

    # Create a cursor
    mycursor = mydb.cursor()

    # Create the database if it doesn't exist
    mycursor.execute("CREATE DATABASE IF NOT EXISTS mydatabase")
    print("Database 'mydatabase' created successfully (or existed already).")

    # Connect to the newly created database
    mydb.database = 'mydatabase'

    # Create the table
    mycursor.execute("CREATE TABLE IF NOT EXISTS customers (name VARCHAR(255), address VARCHAR(255))")
    print("Table 'customers' created successfully.")

except Error as e:
    print(f"Error: {e}")

finally:
    # Close the connection
    if 'mydb' in locals() and mydb.is_connected():
        mydb.close()
        print("MySQL connection is closed.")
