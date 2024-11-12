create table nitn
(
roll int,
name varchar (100)
)
insert into nitn values
(6,'lali'),
(5,'monu'),
(9,'hari'),
(1,'nitin'),
(2,'shaym'),
(3,'krishna'),
(4,'monu')
select * from nitn
drop table nitn

create clustered index nitin
on nitn(roll)

 drop index nitn.nitin

sp_helpindex nitn
-------------------
create unique clustered index unidex on nitn (roll desc)
insert into nitn(name) values
('kp')
drop index nitn.unidex