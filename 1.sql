create database manoj;
use manoj;
create table emp(
name varchar(30),
age int,
department varchar(20),
salary int
);
alter table emp add column degree varchar(5);
alter table emp change department dept varchar(20);
create table dbt as select * from emp;
alter table dbt add email varchar(20);
alter table dbt rename column email to gmail;
alter table dbt rename to copy;
alter table copy modify gmail varchar(40);
alter table copy add constraint primary key(name) ;
drop table copy;