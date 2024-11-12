create table hj
(name varchar (100),
age int,
gender varchar (100),
s1 int,
s2 int,
s3 int,
s4 int,
s5 int,
s6 int)


insert into hj values
('nitin',17,'male',78,79,81,89,91,64),
('golu',18,'male',45,78,96,58,37,84),
('shyam',19,'male',87,85,84,68,75,45)
select * from hj
alter table hj add total int
update hj set total=
case
	when age>0 then s1+s2+s3+s4+s5+s6
end
----------------
alter table hj add percentage int
update hj set percentage=
case
	when age>0 then total/6
	else 'nitin'
end
---------------------
alter table hj add grade varchar (100)
update hj set grade=
case
	when percentage>70 and percentage<80 then 'c'
	else 'd'
end


drop table hj





