select * from kp
select* from pk
------------------
select * from kp as a 
inner join pk as b on a.roll=b.[sr no]

select a.name,a.roll,b.company_name,b.[sr no] from kp as a
join pk as b on a.roll=b.[sr no]
---------
select * from kp as a
left join pk as b on a.roll=b.[sr no]

select a.roll,a.name,b.company_name,b.[sr no] from kp as a
left outer join pk as b on a.roll=b.[sr no]
--------------------
select a.roll,a.name,b.company_name,b.[sr no] from kp as a
right outer join pk as b on a.roll=b.[sr no]
----------------------
select * from kp as a 
full join pk as b on a.roll=b.[sr no]
---------------------
select * from pk
select * from kp
select * from pk
cross join kp
--------------
select * from kp
-------------
select a.employ_id,a.name,b.manager_id,b.name as manager_name from ji as a 
join ji as b
on a.employ_id=b.manager_id