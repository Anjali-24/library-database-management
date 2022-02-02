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
