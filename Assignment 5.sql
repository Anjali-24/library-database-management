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
insert into Worker values(7,'Alisha','Lodha',35,'Mumbai','IT')
insert into Worker values(8,'Nisha','Sharma',15,'Jaipur','BI')
insert into Worker values(9,'Vishal','Sahani',50,'Mumbai','Finance')
insert into Worker values(10,'Amitabh','Bacchan',50,'Delhi','Finance')
insert into Worker values(11,'Mitesh','Lodha',35,'Mumbai','IT',)

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


##5.1
select * from Worker where first_name!= 'Vipul' and first_name!= 'Satish'

## 5.2
select first_name from Worker where first_name LIKE '_____h'

alter table Worker add Email varchar(30)
update Worker set Email = 'abc@gmail.com' where worker_id = 1
update Worker set Email = 'dcc@gmail.com' where worker_id = 2
update Worker set Email = 'afc@gmail.com' where worker_id = 3
update Worker set Email = 'ahc@yahoo.com' where worker_id = 4
update Worker set Email = 'frc@gmail.com' where worker_id = 5
update Worker set Email = 'afc@redif.com' where worker_id = 6
update Worker set Email = 'erf@gmail.com' where worker_id = 7
update Worker set Email = 'tgf@yahoo.com' where worker_id = 8
update Worker set Email = 'ahc@gmail.com' where worker_id = 9
update Worker set Email = 'abi@gmail.com' where worker_id = 10
update Worker set Email = 'abft@gmail.com' where worker_id = 11
## 5.3
select * from Worker where Email not like '%@gmail.com'

