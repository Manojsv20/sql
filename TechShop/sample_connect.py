import mysql.connector

con=mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="1234",
    database="chk"
)

myc=con.cursor()
query="select * from product"
myc.execute(query)
for i  in myc:
    print(i)
myc.close()
con.close()