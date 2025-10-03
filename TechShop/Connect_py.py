# import the connector

import mysql.connector


# connect with the database and the table

con=mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="1234",
    database="TechShop"

)

cursor=con.cursor()


import mysql.connector


def create_product():
    product_id = int(input("Enter Product ID: "))
    name = input("Enter Product Name: ")
    desc = input("Enter Description: ")
    price = int(input("Enter Price: "))

    query = "INSERT INTO Products (ProductId, ProductName, Description, Price) VALUES (%s, %s, %s, %s)"
    cursor.execute(query, (product_id, name, desc, price))
    con.commit()
    print("Product inserted successfully!\n")

def read_products():
    cursor.execute("SELECT * FROM Products")
    for row in cursor.fetchall():
        print(row)
    print()

def update_product():
    product_id = int(input("Enter Product ID to update: "))
    new_price = int(input("Enter new Price: "))
    query = "UPDATE Products SET Price = %s WHERE ProductId = %s"
    cursor.execute(query, (new_price, product_id))
    con.commit()
    print("Product updated successfully!\n")

def delete_product():
    product_id = int(input("Enter Product ID to delete: "))
    query = "DELETE FROM Products WHERE ProductId = %s"
    cursor.execute(query, (product_id,))
    con.commit()
    print("Product deleted successfully!\n")

# Main menu
while True:
    print("=== TechShop Products CRUD ===")
    print("1. Add Product")
    print("2. View Products")
    print("3. Update Product Price")
    print("4. Delete Product")
    print("5. Exit")

    choice = input("Enter your choice: ")

    if choice == '1':
        create_product()
    elif choice == '2':
        read_products()
    elif choice == '3':
        update_product()
    elif choice == '4':
        delete_product()
    elif choice == '5':
        break
    else:
        print("Invalid choice, try again!\n")

# Close cursor and connection
cursor.close()
con.close()


