import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    database="eral_harbor"
)
if connection.is_connected():
    print("Successfully connected to the database")
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM Client")
    rows = cursor.fetchall()
    for row in rows:
        print(row)
    cursor.close()
    connection.close()
else:
    print("Connection failed")
