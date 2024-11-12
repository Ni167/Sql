update golu set age=18 where name='aaryan'
select * from golu
-----------------------
select * ,
voters=
case
	when age>19 then 'eligible'
	when age=18 then 'try next year'
	when age<18 then 'not eligible'
end
from golu
------------------------
select *,
case 
when age>19 then 'eligible'
when age=18 then 'try next year'
when age<18 then 'you are not eligible'
end voters
from golu
-------------------------
select *,
case 
when age>19 then 'eligible'
when age=18 then 'try next year'
when age<18 then 'you are not eligible'
else 'nitin'
end voters
from golu
-------------------------
select * from golu
alter table golu add voters varchar (100)
update golu set voters=
case
	when age>19 then 'you are eligible'
	when age=18 then 'try next year'
	when age<18 then 'not eligigble'
	else 'nitin'
end