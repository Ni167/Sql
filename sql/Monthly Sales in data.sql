use nitin

select * from worker
----------
select year(joining_date) as years ,
Datename(month,JOINING_DATE) as months,
sum(salary) as total_salary  from worker
group by year(joining_date),Datename(month,JOINING_DATE)
----------
select year(joining_date) as years ,
sum(salary) as total_salary  from worker
group by year(joining_date)
----------
----------
select 
Datename(month,JOINING_DATE) as months,
sum(salary) as total_salary  from worker
group by Datename(month,JOINING_DATE)
----------
