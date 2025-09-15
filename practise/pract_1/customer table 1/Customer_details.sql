create database dummy;
use dummy;
create table customer (customer_id int,
customer_name varchar(20) ,
customer_address varchar(20),
city varchar(20),
state varchar(20),
zip_code int
);
insert into customer (customer_id,customer_name,customer_address,city,state,zip_code)
values
(1,"John Doe","392 sunset blvd","new york","NT",10055),
(2,"Mary Smith","6900 main st.","San Francisco","CA",94032),
(3,"Richard Newman","2040 Riverside rd","San diege","CA",92010),
(4,"Cathy Cook","4010 speedway","tucson","AZ",85719);