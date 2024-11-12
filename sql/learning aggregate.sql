use nitinn
---------
select * from worker
--------
select  sum(salary) as total_salary from worker
select min(salary) as total_salary from worker
select max(salary) as total_salary from worker
select avg(salary) as total_salary from worker
select count(salary) as total_salary from worker
---------
select department, sum(salary) as total_salary from Worker group by DEPARTMENT
select department, min(salary) as total_salary from Worker group by DEPARTMENT
select department, max(salary) as total_salary from Worker group by DEPARTMENT
select department, avg(salary) as total_salary from Worker group by DEPARTMENT
select department, count(salary) as total_salary from Worker group by DEPARTMENT
---------
select department,gender, sum(salary) as total_salary from Worker group by DEPARTMENT,gender
select department,gender, max(salary) as total_salary from Worker group by DEPARTMENT,gender
select department,gender, min(salary) as total_salary from Worker group by DEPARTMENT,gender
select department,gender, avg(salary) as total_salary from Worker group by DEPARTMENT,gender
select department,gender, count(salary) as total_salary from Worker group by DEPARTMENT,gender
--------------
select * from Worker where salary in(select max(salary) from Worker where salary not in(select max (salary) from Worker ))
------------
select department, sum(salary) as total_salary from Worker where department in ('hr') group by DEPARTMENT
select department, sum(salary) as total_salary from Worker where department not in ('hr') group by DEPARTMENT
select gender, sum(salary) as total_salary from Worker where gender in ('male') group by gender
select gender, sum(salary) as total_salary from Worker where gender not in ('male') group by gender

----------
select department,gender, sum(salary) as total_salary from Worker group by DEPARTMENT,gender having sum(salary)>500000
select department,gender, count(salary) as total_salary from Worker group by DEPARTMENT,gender having count(salary)>=2
select department,gender, sum(salary) as total_salary from Worker group by DEPARTMENT,gender having count(salary)>=2
select gender, sum(salary) as total_salary from Worker group by gender having sum(salary)>270000
-----------
select department,sum(salary) as total_salary from worker where DEPARTMENT in ('hr') group by DEPARTMENT having sum(salary)>50000
select department,sum(salary) as total_salary from worker where DEPARTMENT in ('hr') group by DEPARTMENT having sum(salary)>50000
select department,max(salary) as total_salary from worker where DEPARTMENT in ('hr') group by DEPARTMENT having sum(salary)>50000
-------------
select gender as ling from worker
select * into pooja from worker
select * from pooja
------
select first_name+' '+last_name as full_name from worker
select first_name+' '+last_name+' '+cast(salary as varchar) full_name from worker
select first_name+' '+last_name+' '+convert(varchar,SALARY) full_name from worker