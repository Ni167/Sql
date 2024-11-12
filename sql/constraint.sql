create table ooo
(name varchar (100),
roll int primary key,
class int,
)
alter table ooo alter column class int not null
alter table ooo add primary key(roll)

drop table ooo
insert into ooo values
('nitin',1,1),
('rohit',2,2),
('monu',3,3),
('pooja',4,4)


select * from ooo
select * from ooo

alter table ooo add constraint pk_person primary key(roll,class)
----------------------
create table h(
name varchar (100),
roll int
)
select * from h
alter table h add unique (name)
alter table h add constraint h_unique unique(name,roll)


insert into h values
('a',1)
insert into h values
('a',2)
drop table h
-----------------------
create table j
(name varchar (100) ,
roll int)

select * from j
drop table j
--------------
alter table j alter column name varchar (100) not null
insert into j values
('g',1)

insert into j(roll) values
(1)

drop table j
--------------
create table yu
(name varchar (100),
roll int
)

select * from yu

alter table yu alter column name varchar (100)
alter table yu add check (name='nitin')
alter table yu add constraint check_yu check(name='nitin'and roll>1)


insert into yu values
('nitin',2)

drop table yu
-----------------
create table r
(name varchar (100),
roll int 
)

select * from r
--------------
alter table r add default 5 for roll
insert into r values('nitin',6)

drop table r
insert into r(name) values
('jk')