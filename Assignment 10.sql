/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [worker_id]
      ,[first_name]
      ,[last_name]
      ,[salary]
      ,[current_location]
      ,[department]
      ,[Email]
      ,[joining_date]
  FROM [ineuron_assignment].[dbo].[Worker]


  use ineuron_assignment
  ##7.1
  select * from(
  select *, ROW_NUMBER() OVER(ORDER BY (select 1)) AS rownumber FROM Worker)
  Worker WHERE Worker.rownumber %2 = 1


  ## 7.2
  select * into employee1 from Worker
  select * from employee1


  create table Employees (emp_id int primary key not null,
first_name varchar(30),
last_name varchar(30),
salary int,
current_location varchar(30),
department varchar(30))

alter table Employees add Email varchar(30)
alter table Employees add hire_date varchar(30)

insert into Employees values(11,'Rama','Verma',10,'Gujarat','IT','abc@gmail.com','10-10-2015')
insert into Employees values(101,'Shami','Sharma',20,'Delhi','BI','dcc@gmail.com','2-2-2014')
insert into Employees values(13,'Rahul','Shukla',30,'Mumbai','Finance','afc@gmail.com','4-10-2015')
insert into Employees values(24,'Rina','Gupta',25,'Delhi','IT','ahc@gmail.com','05-10-2016')
insert into Employees values(35,'Shila','Verma',26,'Goa','Forensic','frc@gmail.com','11-10-2017')
insert into Employees values(66,'Neelu','Verma',10,'Gujarat','Finance','dfc@yahoo.com','25-12-2018')
insert into Employees values(77,'Aashi','Lodha',35,'Mumbai','IT','dgdf@gmail.com','5-4-2016')
insert into Employees values(88,'Nishu','Varma',15,'Jaipur','BI','dsgdf@yahoo.com','5-6-2019')
insert into Employees values(99,'Vishal','Sahani',50,'Mumbai','Finance','sdfdg@yahoo.com','25-5-2015')
insert into Employees values(100,'Amitabh','Bacchan',50,'Delhi','Finance','fdsw@redif@gmail.com','01-01-2005')
  

  ##8.1

  select emp_id, first_name, last_name from Employees

  intersect 

  select worker_id, first_name, last_name from Worker

  ##8.2

  select * from Worker where first_name not in(select first_name from Employees)



  use ineuron_assignment

  ##Assignment 9
  ##Q17

  select top 10 * from Worker

  ## Q18
  select top 5 * from Worker order by salary desc




 
 
 ## Assignment 10
  ##Q19


  select first_name, last_name, department, salary from(
  select first_name, last_name, department, salary, ROW_NUMBER() over(order by salary desc) as highest_salary from Worker)
  Worker WHERE highest_salary <=5

  ##Q20
  select * from Worker where salary in (select salary from Worker group by salary having count (1)>1) order by salary

