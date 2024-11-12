select * from ji
insert into ji values
(6,'abdul',6)

update ji set manager_id=6 where name='ketan'
update ji set manager_id=5 where name='raj'
update ji set manager_id=5 where name='raj'
update ji set manager_id=1 where name='abdul' or name='roshan'
update ji set manager_id=6 where name='abdul' or name='roshan'
-------------------
select * from ji order by name
--------------
select a.name as employe_name,b.name as manager_name from ji as a 
inner join ji as b 
on a.manager_id=b.employ_id order by a.name