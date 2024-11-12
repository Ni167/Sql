use nitinn
select * from worker

select gender as ling from worker
select distinct department from worker
select count (distinct department) from worker
--------------------------
select * from worker
--------------
select department,gender, sum(salary) from worker group by rollup (DEPARTMENT,gender)
select department,gender, sum(salary) from worker group by cube (DEPARTMENT,gender)
-------------------------
select coalesce (department,'total')as department_total,sum(salary) from Worker group by rollup (DEPARTMENT)
--------------------
select department,gender,sum(salary) from worker group by
grouping sets
(
(department,gender),
(DEPARTMENT),
(gender),
()
)
