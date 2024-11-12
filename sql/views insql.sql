select * from worker
select * from title

CREATE view vw_forworker
as
select * from worker as a
inner join title as b
on b.WORKER_REF_ID=a.worker_id 

select * from vw_forworker
--------------
CREATE view vw_forworker1
as
select a.*,b.WORKER_TITLE,b.AFFECTED_FROM from worker as a
inner join title as b
on b.WORKER_REF_ID=a.worker_id 

select * from vw_forworker1
---------------
alter view vw_forworker3
as
select a.FIRST_NAME,a.last_name,a.JOINING_DATE,a.DEPARTMENT,a.gender,a.states,b.WORKER_TITLE,b.AFFECTED_FROM from worker as a
inner join title as b
on b.WORKER_REF_ID=a.worker_id 

select * from vw_forworker3
---------------
CREATE view vw_forworker4
as
select a.*,b.WORKER_TITLE,b.AFFECTED_FROM from worker as a
inner join title as b
on b.WORKER_REF_ID=a.worker_id 
where WORKER_TITLE='manager'

select * from vw_forworker4
---------------
alter view vw_forworker4
as
select a.*,b.WORKER_TITLE,b.AFFECTED_FROM from worker as a
inner join title as b
on b.WORKER_REF_ID=a.worker_id 
where WORKER_TITLE='manager' or WORKER_TITLE='lead'

select * from vw_forworker4
--------------
sp_helptext vw_forworker4
drop view vw_forworker
------------
create  view vw_worker
as
select * from Worker

insert into worker values(9,'Nitin','Gupta',500000,cast(15-05-2006 as datetime),'MK','Male','J&k')
update Worker set first_name='Shyam' where first_name='Nitin'
delete Worker where worker_id=9


select * from vw_worker

insert into vw_worker values(9,'Nitin','Gupta',500000,cast(15-05-2006 as datetime),'MK','Male','J&k')
update vw_worker set first_name='Shyam' where first_name='Nitin'
delete vw_worker where worker_id=9
----------------