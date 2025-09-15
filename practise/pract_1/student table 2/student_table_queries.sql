-- 1.Create table students 
create table students(
id int,
name varchar(20),
age int
);

-- 2.Add new column "grade"
alter table students add column grade varchar(20);

-- 3.Rename the "grade" column to "final grade"
alter table students rename column grade to finalGrade; 

-- 4.Insert the records 
insert into students(id,name,age,finalGrade)
values
(101,"John Doe",20,"A"),
(102,"Jane Smith",22,"B"),
(103,"Bob Johnson",19,"C"),
(104,"Alice Brown",21,"A"),
(105,"Charlie Davis",20,"B"),
(106,"Emma Wilson",23,"A"),
(107,"Micheal Lee",20,"C"),
(108,"Oliva Moore",19,"B"),
(109,"Willam Turner",21,"A"),
(110,"Sophia Rodriger",22,"C");

-- 5.Update the student age 21 for the student id 101
update students set age =21 where id=101;

--  6.Delete the student with the id 101 from the "students" table 
delete from students where id = 101;

-- 7.Retrieve all students aged 19 or older
select * from students where age >=19;

-- 8.Retrieve students named "Wilam Turner" or "Alice Brown"
select * from students where name in ("Willam Turner","Alice Brown");

-- 9. Retrieve students with grade A or  B and aged 20 or older
select * from students where finalGrade in ("A","B") and age>=20;

-- 10.Retrieve the students aged between 18 and 25
select * from students where age between 18 and 25;

-- 11.retrive the studenst age less than 18
select * from students where age <18; 

-- 12.Retrieve the students greater than "c"
select * from students where finalGrade<"C";

-- 13.Count the total number fo students 
select count(*) from students;

-- 14.calculate the average of the students 
select avg(age) as average_age from students;

-- 15. find the sum of ages for the students with grade "A" or "B"
select sum(age) from students where finalGrade in("A","B");

-- 16.Group  students by grade and count the number of students in each grade 
select count(*) ,finalGrade from students group by finalGrade;

-- 17. Group students by age and calculate the average age in each group
select avg(age),age from students group by age order by age ;

-- 18. find the grade with the highesh number of students
select count(name),finalGrade from students group by finalGrade order by count(name) desc limit 1;

-- 19.Find grades with an average age greater than 22
select finalGrade,avg(age) from students group by finalGrade having avg(age)>22;

-- 20. the grade with fewer than 3 students 
select count(name) from students group by finalGrade having count(name)<3;

-- 21. find the grade with an average age between 20 and 25
select avg(age),finalGrade from students group by finalGrade having avg(age) between 20 and 25;

-- 22.list all the students in the ascending order of age 
select * from students order by age asc;

-- 23.list the students with grade A or B in descending order of age 
select * from students where finalGrade in ("A","B") order by age desc;

-- 24.sort students by grade in alphabetic order
select * from students order by name ;

-- 25.delete the student table 
delete from students ;


select * from students;

