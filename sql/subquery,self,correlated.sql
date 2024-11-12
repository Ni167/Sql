select * from worker
select * from cmp 
select * from title
----------------Self-contained-subquery
select * from worker where worker_id in(select worker_ref_id from Title where WORKER_TITLE='Manager')

----------------Corrrelate subquery
select * from worker as w where w.WORKER_ID in
(select t.worker_ref_id from title as t where w.gender='Male')

select * from worker as w where w.WORKER_ID in
(select t.worker_ref_id from title as t where w.gender='feMale')

select * from worker as w where w.WORKER_ID in
(select t.worker_ref_id from title as t where w.salary=500000)

select * from worker as w where w.WORKER_ID in
(select t.worker_ref_id from title as t where w.salary<500000)


select * from worker as w where w.WORKER_ID in
(select t.worker_ref_id from title as t where w.salary>=300000)

select * from worker where salary =
(select min(salary) from worker)