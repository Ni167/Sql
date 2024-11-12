create table dataa
(
roll int identity,
income bigint
)
select * from dataa
drop table dataa
insert into dataa values
(1000)
drop table dataa
------------------
create table dataa
(
roll int identity(1,6),
income bigint
)

select * from dataa

insert into dataa values
(2000)
----------------------
delete dataa where roll=7

insert into dataa(roll,income) values
(7,4568794)
set identity_insert dataa on
set identity_insert dataa off
dbcc checkident (dataa,reseed,995)