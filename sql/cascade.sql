select * from nitin
alter table nitin alter column id int not null
alter table nitin add primary key(id)
delete nitin where age=74
----------------------------
create table hen
(name varchar (100),
caller_id int foreign key references nitin(id) on update cascade on delete set null )
insert into hen values
('boat',45),
('mahindra',25),
('nestle',48),
('tech',55),
('sm',65),
('vivo',89),
('spykar',96)


select * from nitin
select * from hen
--------------------
delete nitin where id =48
----------------------------
update nitin set id=44 where id=45


drop table hen