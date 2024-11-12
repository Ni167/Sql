
alter table hello add voters varchar (100)
alter table hello drop column voters
select * from hello
select * ,
voters=
case
when age>35 then 'you are eligible'
when age=35 then 'you are not'
when age<35 then 'not eligible'
end
from hello
-------------------
select *,
case
cc
end as msh
from hello
--------------
select * from hello

select *,
case
when age>35 then 'you are eligible'
when age=30 then 'you are not'
when age<35 then 'not eligible'
else 'nitin'
end as voters
from hello
-----------------
select * from hello 


update hello set voters=
case
when age>35 then 'you are eligible'
when age=35 then 'you are not'
when age<35 then 'not eligible'
end

-------------------
select *,
case 
when age>3 then income+roll
end as total
from hello 


