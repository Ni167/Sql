use nitin
----------
select * from worker
------------
select * into worker1 from worker where 0<>0 
-----------
select * from worker1
----------
select * from worker where worker_id in
(select min(worker_id) from worker)

select * from worker where worker_id in
(select max(worker_id) from worker)

select year(joining_date) as join_year,datename(MONTH,JOINING_DATE) as month_name
,sum(SALARY) as monthly_salary  from worker
group by year(joining_date),datename(MONTH,JOINING_DATE)
--------------
select *, DATEPART(QUARTER,joining_date)as [quarter] from worker