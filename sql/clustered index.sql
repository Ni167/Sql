create table ko
(name varchar (100),
roll int,
age int,
income decimal (10,2)
)
select * from ko
insert into ko values
('abdull',25,26,50000.00),
('shyam',24,27,45000.00),
('jk',27,28,60000.00)


create clustered index nitin
on ko(roll)

sp_helpindex nitin
-----------
drop index ko.nitin
delete ko
-----------
insert into ko(age) values
(45)


create unique clustered index unidex
on ko(roll)

select * from ko
sp_helpindex ko
-----------
create clustered index nitin
on ko (roll desc) 
drop index ko.nitin
sp_helpindex ko