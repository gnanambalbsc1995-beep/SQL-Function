-- create db
create database staff_table;
-- create table
use staff_table;
create table staff_table(id int, name varchar(50), dept varchar(50), salary int);
insert into staff_table values(1, "Ashwini", "HR", 90000);
insert into staff_table values(2, "Kavyesh", "Manager", 80000);
insert into staff_table values(3, "Thamiran", "Data Analyst", 40000);
insert into staff_table values(4, "Krishnan", "HR", 80000);
insert into staff_table values(5, "Vennila", "Manager", 60000);
insert into staff_table values(6, "Mani", "Data Analyst", 45000);


delete from staff_table where id=5;

-- Numeric and Math Function 

-- 1
select dept, count(id) from staff_table group by dept;

-- 2
select count(*) from staff_table where dept = "HR";

-- 3
select dept, avg(salary) from staff_table group by dept; 

-- 4
select dept, avg(salary) from staff_table group by dept having dept = "Manager";

-- 5
select dept, avg(salary) from staff_table group by dept; 

-- 6
select sum(salary) from staff_table;  

-- 7
select dept, sum(salary) from staff_table group by dept having dept = "HR";

-- 8
select dept, sum(salary) from staff_table group by dept;

-- 9
select max(salary) from staff_table;

-- 10
select dept, max(salary) from staff_table group by dept;

-- 11
select min(salary) from staff_table;

-- 12
select name, min(salary) from staff_table group by name;

-- String / Text Functions

-- 13
select ucase(name) from staff_table;

-- 14
select ucase(name) alisaname from staff_table;

-- 15
select name, char_length(name) from staff_table;

-- 16
select name,concat("Rs: ",salary) from staff_table;

-- 17
select name,concat("Rs",format(salary,2)) from staff_table;

-- 18
select name, left(name,2) from staff_table;

-- 19
select name, right(name,3) from staff_table;

-- 20
select name, dept left(name,dept,3) from staff_table;

-- Date Function 

-- 21
alter table staff_table add column hire_date date;

-- 22
set sql_safe_updates=0;
update staff_table set hire_date = "2024-11-04" where dept = "manager";

-- 23
select date and time (now());

-- 24
select date (now());

-- 25
select time (now());

-- 26
select date_format(curdate(), "%d-%m-%y");

-- 27 
select date_format(curdate(), "%d/%m/%y") as date;

-- 28
select datediff("2027-1-1", curdate()) as coundown;

-- 29
select date_add(curdate(),interval 2 day);

-- 30
select date_add(curdate(),interval -1 day) as yesterday;

-- 31
select date_add(curdate(),interval -1 month) as yesterday;

-- 32
select date_add(curdate(),interval 2 month) as yesterday;

-- 33
select date_add(curdate(),interval 2 year) as yesterday;

-- 34
select date_add(curdate(),interval -2 year) as yesterday;









