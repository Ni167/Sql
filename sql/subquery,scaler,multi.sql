use nitin

sp_renamedb 'nitinn','nitin'

select * from worker
select * from bonus
select * from title 
--------------
---Multi-Scalersubquery
select * from worker where worker_id in
(select worker_ref_id from title where WORKER_TITLE='Manager')

--Scaler-subquery
select * from worker where worker_id in
(select worker_ref_id from title where WORKER_TITLE='Asst. Manager')
---------------------
select * from worker where worker_id =
(select worker_ref_id from title where WORKER_TITLE='Asst. Manager')

select * from title where WORKER_REF_ID =
(select worker_id from Worker where FIRST_NAME='Vishal')
-------------
select * from cmp

select * from worker where salary in
(select salary from worker where first_name='Monika' or first_name='Vishal')

------------------
select * from worker where salary < any
(select salary from worker where first_name='Monika' or first_name='Vishal')--(100000,300000)
------------------
select * from worker where salary < all
(select salary from worker where first_name='Monika' or first_name='Vishal')----(100000,300000)
