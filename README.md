# TechShop – SQL Database for Electronic Gadget Store

## 📌 Introduction
This repository contains SQL scripts to create and manage the **TechShop** database, a backend for an electronic gadget store. It includes tables for customers, products, orders, order details, and inventory, along with sample data to test queries.

The database structure is designed to support CRUD operations and can be integrated with Python or other applications for real-world store management.

---

## 📁 Repository Structure
TechShop/
├── create_database.sql # Creates the TechShop database
├── create_tables.sql # Creates all tables with constraints
├── insert_data.sql # Inserts sample data into tables
├── select_queries.sql # Example queries to fetch data

---

## 💡 Database Tables

1. **Customers**  
   Stores customer information with unique emails and phone numbers.

2. **Products**  
   Stores product information including name, description, and price.

3. **Orders**  
   Stores customer orders with foreign key references to Customers.

4. **OrderDetails**  
   Stores product details for each order with foreign keys to Orders and Products.

5. **Inventory**  
   Tracks product stock levels and last stock updates.

---

## ▶️ How to Use

1. Clone the repository:  
   ```bash
   git clone https://github.com/Manojsv20/sql.git
   
2.Open MySQL and run the scripts in this order:

create_database.sql

create_tables.sql

insert_data.sql

3.Use select_queries.sql to test sample queries and data retrieval.

🛠 Technologies Used

MySQL

SQL Queries for CRUD operations

Sample data for testing

✅ Notes

This database can be integrated with Python (using mysql-connector-python) or any other programming language for full application development.

Tables include proper foreign key constraints to maintain relational integrity.
