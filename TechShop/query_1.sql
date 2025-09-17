-- TASKS 2: SELECT, WHERE, BETWEEN, AND, LIKE
-- 1. Write an SQL query to retrieve the names and emails of all customers.
select FirstName,LastName,email from Customers;
select concat(FirstName,LastName) as CustomerName,Email from Customers;

-- 2. Write an SQL query to list all orders with their order dates and corresponding customer names.
select O.orderdate , c.firstname , c.lastname from orders O join customers c on  c.CustomerId=O.CustomerId;

-- 3. Write an SQL query to insert a new customer record into the "Customers" table.
-- Include customer information such as name, email, and address.
select * from customers;
insert into customers(customerId,firstname,lastname,email,phone,address)
value
 (11,"Manoj","SV","MJ@gmail.com","123456789","mdu");

-- 4. Write an SQL query to update the prices of all electronic gadgets in the "Products" table by increasing them by 10%.
select * from products;
set sql_safe_updates=0;
update products set price= ((price)/10 +price) ;

-- 5. Write an SQL query to delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables.
-- Allow users to input the order ID as a parameter.
set @user_input = 1001;
delete O,OD from orders O join orderdetails OD on O.OrderId=OD.OrderId where O.orderId= @user_input ;
select * from orders;
-- or 
delete from orders where orderId= @user_input;
delete from orderdetails where orderId= @user_input;

-- 6. Write an SQL query to insert a new order into the "Orders" table.
-- Include the customer ID, order date, and any other necessary information.
insert into orders(OrderId,customerId,OrderDate) value
(1001,3,"2025-07-11");

-- 7. Write an SQL query to update the contact information (e.g., email and address) of a specific customer in the "Customers" table.
-- Allow users to input the customer ID and new contact information.
set @email="manoj@gmail.com";
set @address="krec main mad";
set @id=11;
update  customers set email = @email, address = @address where CustomerId =@id;
select * from customers;

-- 8. Write an SQL query to recalculate and update the total cost of each order in the "Orders" table based on the prices and quantities in the "OrderDetails" table.
update orders o join orderdetails od on o.orderid= od.orderId
join products p on od.productid=p.productid
 set o.TotalAmount = (od.Quantity*p.price)  ;
select * from orders;

-- 9. Write an SQL query to delete all orders and their associated order details for a specific customer from the "Orders" and "OrderDetails" tables.
delete od from orders o join orderdetails od using(orderid) where customerid=1;
delete from orders where CustomerId=1;
select * from orders;
select * from orderdetails;

-- 10. Write an SQL query to insert a new electronic gadget product into the "Products" table, including product name, category, price, and any other relevant details.
insert into products(ProductId, productName, Description, Price) 
values (110, 'SmartPhone', '6.5" display,128GB stodage, 5000mAh Battery', 14999);
select * from products;

-- 11. Write an SQL query to update the status of a specific order in the "Orders" table (e.g., from "Pending" to "Shipped").
-- Allow users to input the order ID and the new status.
alter table orders add column status varchar(50) default "pending";
set @id =1003;
update orders set status= "shipped" where OrderId = @id;
select * from orders;
-- 12. Write an SQL query to calculate and update the number of orders placed by each customer in the "Customers" table based on the data in the "Orders" table.
alter table customers  add column no_of_order int default 0;
select * from customers;
update customers c set no_of_order =(select count(*) from orders o where c.CustomerId=o.CustomerId);
UPDATE Customers c
JOIN (
    SELECT o.CustomerId, COUNT(*) AS order_count
    FROM Orders o
    GROUP BY o.CustomerId
) t ON c.CustomerId = t.CustomerId
SET c.no_of_order = t.order_count;


