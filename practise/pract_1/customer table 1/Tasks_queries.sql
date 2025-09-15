-- 1.Create table customer contain customer_id,customer_name,customer_address,city,state,zip_code
create table customer (customer_id int,
customer_name varchar(20) ,
customer_address varchar(20),
city varchar(20),
state varchar(20),
zip_code int
);

-- 2.insert the given data
insert into customer (customer_id,customer_name,customer_address,city,state,zip_code)
values
(1,"John Doe","392 sunset blvd","new york","NT",10055),
(2,"Mary Smith","6900 main st.","San Francisco","CA",94032),
(3,"Richard Newman","2040 Riverside rd","San diege","CA",92010),
(4,"Cathy Cook","4010 speedway","tucson","AZ",85719);

-- 3.Change the "customer address" column to "address"
alter table customer rename column customer_address to address;

-- 4.Add a new column called "moblie_number"
alter table customer add column moblie_number int;

-- 5.Delete the column where the moblie_number is null
delete from customer where moblie_number is null;

-- 6.insert the given values
insert into customer (customer_id,customer_name,address,city,state,zip_code,moblie_number)
values
(1,"John Doe","392 sunset blvd","new york","NT",10055,"555-123-4567"),
(2,"Mary Smith","6900 main st.","San Francisco","CA",94032,"555-987-6543"),
(3,"Richard Newman","2040 Riverside rd","San diege","CA",92010,"555-555-5555"),
(4,"Cathy Cook","4010 speedway","tucson","AZ",85719,"555-321-7890"),
(5,"Alice Johnson","123 oak street","san deigo","CA",90001,"555-111-2222"),
(6,"Bob Willams","456 Elm Avenue","chicago","il",60601,"555-444-7777");

-- 7.show  all records
select * from customer;

-- 8.update the phone number for "Mary Smith" to "82206-1234"
update customer set moblie_number="82206-1234" where customer_name="Mary Smith";

-- 9.Delete the record where zip_code is "60601"
delete from customer where zip_code=60601;

-- 10.Select distinct data where the user is from a state ="CA"
select distinct(customer_name) from customer where city="CA";

-- 11.Print the customer IDs who are greater than 5
select *  from customer where customer_id>5;

-- 12.Delete the moblie_number column
alter table customer drop column moblie_number;

-- 13.Truncate the table 
truncate table customer;
