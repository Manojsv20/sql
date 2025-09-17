create database TechShop;
use TechShop;

-- 1.create a customer table 
create table Customers
(
CustomerId int primary key,
FirstName varchar(50) not null,
LastName varchar(50) not  null,
Email varchar(50) unique ,
Phone bigint unique,
Address varchar(100)
);

-- 2.create product table 
create table Products
(
ProductId int primary key,
ProductName varchar(50),
Description varchar(100),
price int
);

-- 3. create a order table 
create table  Orders
(
OrderId int primary key,
CustomerId int references Custometrs (CustomerId),
OrderDate date,
TotalAmount int
);

-- 4. create orderDetail table
create table  OrderDetails
(
OrderDetailId int primary key,
OrderId int references Orders(OrderId),
ProductId int references Products(ProductId),
Quantity int
);

-- 5.create a table Inventory
create table Inventory
(
InventoryId int primary key,
ProductId int references Products(ProductId),
QuantityInStock int,
LastStockUpdate date
);

-- 6.insert the random approperiate values on the tables
INSERT INTO Customers (CustomerId, FirstName, LastName, Email, Phone, Address) VALUES
 (1, 'Rajpriya','Raja','rp11@gmail.com','9994325922', 'C10 Gladway'),
 (2, 'Priya','Dharshini','pd12@gmail.com','9994455566', 'C11 Gladway'),
 (3, 'Alice','Smith','as13@gmail.com','9080925922', 'B18 OathAvenue'),
 (4, 'Rohan','Varma','rohan13@gmail.com','908080944', 'A10 OathAvenue'),
 (5, 'Meera','Gupta','meera15@gmail.com','9897969594', 'No10 PineRoad'),
 (6, 'Sanjay','Kumar','sanju@gmail.com','9500724465', '100 Ramanathapuram'),
 (7, 'Lakshmi','Rao','laxrao@gmail.com','9080001958', '18 JasmineStreet'),
 (8, 'Rahul','Dass','rahul@gmail.com','9088925923', 'B6 CherryStreet'),
 (9, 'Arjun','Sinha','arjunsinha10@gmail.com','9080826522', 'C18 Gladway'),
 (10, 'Deepak','Choudhary','deepakchoudhary@gmail.com','7969925923', '26 Ramanathapuram');
 
select * from Customers;

INSERT INTO products( ProductId, productName, Description, Price)
VALUES
 (100, 'WirelessMouse', 'USB,1600 DPI', 1000),
 (101, 'WirelessKeyboard', 'Slim and Silent', 900),
 (102, 'SmartWatch', 'Fitness, call alert', 2500),
 (103, 'SmartWatchCharger', '18W, Type C', 500),
 (104, 'Laptop', 'i5, 8GB RAM, 512GB SSD', 40000),
 (105, 'Television', '43", smart, Full HD', 32000),
 (106, 'Printer', 'Inkjet, Color, Wireless', 6000),
 (107, 'BluetoothSpeaker', '10hr battery, waterproof', 1200),
 (108, 'PowerBank', '10000mAh, dual USB', 1100),
 (109, 'LaptopCharger', '65W, fast charging', 1200);

select * from Products;

INSERT INTO orders(OrderId, CustomerId, OrderDate, TotalAmount) 
VALUES
 (1000, 2, '2025-06-08', NULL),
 (1001, 3, '2025-01-15', NULL),
 (1002, 6, '2025-05-20', NULL),
 (1003, 9, '2025-05-20', NULL),
 (1004, 1, '2024-10-30', NULL),
 (1005, 8, '2024-09-14', NULL),
 (1006, 7, '2025-01-30', NULL),
 (1007, 5, '2025-05-20', NULL),
 (1008, 4, '2025-04-14', NULL),
 (1009, 10, '2025-04-14', NULL);
 
select * from Orders;

INSERT INTO orderdetails(OrderDetailId, OrderId, ProductId, Quantity) 
VALUES
 (2006, 1000, 100, 50),
 (250, 1001, 108, 10),
 (398, 1002, 106, 43),
 (2800, 1003, 104, 65),
 (2678, 1004, 102, 90),
 (800, 1005, 101, 17),
 (180, 1006, 107, 8),
 (50, 1007, 103, 78),
 (1368, 1008, 105, 5),
 (346, 1009, 109, 10);
 
select  * from orderdetails;

INSERT INTO inventory(InventoryId, ProductId, QuantityInStock, LastStockUpdate) VALUES
 (31, 101, 300, '2025-05-03'),
 (32, 105, 334, '2025-06-01'),
 (33, 110, 206, '2025-06-10'),
 (34, 100, 800, '2025-05-31'),
 (35, 109, 455, '2025-06-10'),
 (36, 107, 667, '2025-06-10'),
 (37, 108, 234, '2025-06-05'),
 (38, 106, 98, '2025-06-05'),
 (39, 103, 34, '2025-05-27'),
 (40, 104, 2, '2025-05-31');
 
 select * from inventory order by ProductId;
