select * from worker
alter table worker add gender varchar (100)
update worker set gender='female' where worker_id=1 and first_name='monika'
update worker set gender='female' where worker_id=2
update worker set gender='male' where worker_id=3
update worker set gender='male' where worker_id=4
update worker set gender='male' where worker_id=5
update worker set gender='male' where worker_id=6
update worker set gender='male' where worker_id=7
update worker set gender='female' where worker_id=8

---------------------------------
select gender, sum(salary) as total from worker group by rollup (gender)
select department, sum(salary) as total from worker group by rollup (department)
select coalesce (department,'total') department,sum(salary) as total  from worker group by rollup (department)
select department,gender,sum(salary) as total from worker group by department,gender
select department,gender,sum(salary) as total from worker group by rollup (department,gender)
select department,gender,sum(salary) as total from worker group by cube (department,gender)

