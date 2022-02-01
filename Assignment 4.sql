create database ineuron_assignment
use ineuron_assignment
create table Worker (worker_id int primary key not null,
first_name varchar(30),
last_name varchar(30),
salary int,
current_location varchar(30),
department varchar(30))

insert into Worker values(1,'Ram','Verma',10,'Gujarat','IT')
insert into Worker values(2,'Sham','Sharma',20,'Delhi','BI')
insert into Worker values(3,'Rahul','Mishra',30,'Mumbai','Finance')
insert into Worker values(4,'Rina','Gupta',25,'Delhi','IT')
insert into Worker values(5,'Shila','Verma',26,'Goa','Forensic')
insert into Worker values(6,'Neelam','Verma',10,'Gujarat','Finance')
insert into Worker values(7,'Aisha','Lodha',35,'Mumbai','IT')
insert into Worker values(8,'Nisha','Sharma',15,'Jaipur','BI')
insert into Worker values(9,'Vishal','Sahani',50,'Mumbai','Finance')
insert into Worker values(10,'Amitabh','Bacchan',50,'Delhi','Finance')

select * from Worker

##1
select first_name as Worker_name from Worker
##2
select distinct department from Worker
##3
select top 5 * from Worker order by worker_id desc

## 2.1
select left(first_name,3) from Worker

##2.2
select charindex('a' ,first_name) as position from Worker

##2.3
select first_name, last_name, salary from Worker order by salary desc


##3.1
select RTRIM(first_name) from Worker

##3.2
select distinct len(department) from Worker 

##3.3
select max(salary) as max_salary from Worker


##4.1
select replace(first_name,'a','A') as Name from Worker

##4.2
select * from Worker order by first_name, department desc

##4.3
select top 1 first_name , last_name as Name from Worker order by salary desc



