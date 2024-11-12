--CTE
--common table expression

use nitin

select * from worker

with New_cte
as
(
select * from Worker where gender='male'
)
select * from new_cte
---------
with New_cte
as
(
select * from Worker where gender='male'
)
select count(*) from new_cte
--------
with New_cte
as
(
select * from Worker where gender='male'
)
select * from new_cte where worker_id>=5
-----------
with New_cte(nitin_id,nitin_name,nitin_last)
as
(
select worker_id,FIRST_NAME,LAST_NAME from Worker where gender='male'
)
select nitin_id,nitin_name,nitin_last from new_cte
-----------------
with New_cte
as
(
select * from Worker 
)
delete new_cte where worker_id=9
update new_cte set first_name='Nitin' where First_name='Shyam'
insert new_cte values(9,'Shyam','Gupta',80000,getdate(),'manager','male','j&k')
----------
with New_cte
as
(
select * from Worker where DEPARTMENT='Hr'
),
New_cte2
as
(
select * from Worker where DEPARTMENT='Admin'
)
select * from new_cte
union all
select * from new_cte2
----------------
with New_cte
as
(
select count(*) as [total_male_worker] from Worker where DEPARTMENT='Hr'
)
select * from new_cte