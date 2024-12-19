create database assesment;

use assesment;

create table worker (
worker_id int primary key,
First_name varchar(45),
Last_name varchar(45),
Salary int,
Joining_date datetime,
Department varchar (45)
);

-- 1
select * from worker order by First_name , Department desc;
-- 2
select * from worker where First_name = "Vipul" or First_name = "Satish";
-- 3
select * from worker where First_name like "_____%h";
-- 4
select * from worker where Salary like "%1" or Salary like "1%";
-- 5
SELECT salary, Department,COUNT(*) FROM worker GROUP BY salary, Department HAVING COUNT(*) > 1;
-- 6 
select * from worker limit 6;
-- 7
select count(department) as "No.people" , department  from worker group by department having count(department)<5;
-- 8
select count(department) as "No.people" , department  from worker group by department;
-- 9
SELECT department, First_name, Salary FROM worker
WHERE Salary IN (SELECT MAX(Salary) FROM worker GROUP BY department);

-- Question 2 

create table student (
StdID int primary key ,
StdName varchar(45),
Sex varchar(45),
Percentage int,
Class int,
Sec varchar(5),
Stream varchar(45),
DOB date 
);

-- 1
select * from student;
-- 2
SELECT StdName, DOB FROM student;
-- 3
SELECT * FROM student WHERE percentage >= 80; 
-- 4
SELECT StdName, Stream, Percentage from student WHERE percentage > 80;  
-- 5 
SELECT * from student WHERE stream = 'Science' AND percentage > 75;

