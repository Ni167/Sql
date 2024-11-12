create table nn
(employ_id int,
income int)

alter table nn alter column employ_id int not null
alter table nn add primary key (employ_id)

insert into nn values
(1,45000),
(2,60000),
(3,40000),
(4,50000)

select * from nn

delete nn where employ_id=4
---------------------------
create table mj
(code int foreign key references nn(employ_id),
comapny_name int,
state_code int)

alter table mj alter column comapny_name varchar (100)
insert into mj values
(1,'boat',401209),
(2,'mahindra',401208),
(3,'google',401207)
select * from mj 
alter table mj alter column state_code varchar (100)
alter table mj alter column state_code int not null
alter table mj  add primary key (state_code)
-------------------------------
drop table jh
create table jh
(location varchar (100),
states_code int foreign key references mj (state_code))

insert into jh values
('nalasopara',401209),
('vasai',401208),
('virar',401207)

select * from nn
select * from mj
select * from jh

drop table jh


select mj.comapny_name,jh.location,nn.income from nn
join mj on nn.employ_id=code
join jh on mj.state_code=jh.states_code
-------------------------------
create view dilip as 
select * from mj

alter view dilip as
select * from mj where code=2

select * from dilip
insert into dilip values
(2,'aman',7964)

delete mj where code=2