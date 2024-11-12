
----------------------
select * from mm
select * from fv
select * from fk
select * from vk
-------------------------
update vk set id=1 where income=45000
update vk set id=2 where income=50000
update vk set id=3 where income=35000
update vk set id=4 where income=25000
update vk set id=5 where income=55000
update vk set id=6 where income=20000
---------------------------
alter table vk add id int


select mm.name,fv.education,fk.company_name,vk.income from mm 
inner join fv
on mm.id=fv.id
inner join fk 
on fv.id=fk.id
inner join vk
on fk.id=vk.id


select * from worker as a join title as b on a.WORKER_ref_ID=b.WORKER_REF_ID
join Bonus on b.worker_ref_id=bonus.worker_ref_id order by a.WORKER_REF_ID