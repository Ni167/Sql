select * from worker
select sum(salary) as total from worker where worker_id>4
select sum(salary) as total from worker worker
select max(salary) as max from worker where worker_id>5
select min(salary) as min from worker
select avg(salary) as average from worker
select count(distinct department) as department from worker
select count(department) as department from worker

SELECT * FROM Worker
WHERE salary > (SELECT max(salary) FROM worker)
-----------------
select sum(salary) as total,min(salary) as min,max(salary) as max,avg(salary) as average,count(*) as totaly from worker
select department,sum(salary) as total from worker group by department
select department,sum(salary) as total from worker group by department having sum(salary)>275000
select department,sum(salary) as total,min(salary) as min,max(salary) as max,avg(salary) as average,count(*) as totaly from worker group by department