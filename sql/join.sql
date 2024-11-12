use nitin
create table kp
(roll int,
name varchar (100),
age int)

insert into kp values
(1,'nitin',19),
(2,'shyam',20),
(3,'azzu',21),
(4,'nilu',22),
(5,'khalid',23),
(6,'afsar',24),
(7,'raj',25),
(8,'dhoni',26)
select * from kp

create table pk
([sr no] int,
[comapny_name] varchar (100),
income decimal (10,2))
select * from pk
insert into pk values
(1,'boat',45000.00),
(2,'mahindra',50000.00),
(3,'hp',45000.00),
(4,'samsung',25000.00),
(5,'tata',75000.00),
(11,'mamaearth',25000.00),
(12,'cardekho',30000.00),
(13,'nestle',20000.00)
select * from pk
update pk set [sr no]=11 where [sr no]=6
update pk set [sr no]=12 where [sr no]=7
update pk set [sr no]=13 where [sr no]=8
---------------------
select * from kp
select * from pk
select * from jo
select * into jo from kp as a
inner join pk as d 
on a.roll=d.[sr no]
select * from jo

select * from kp as a
join pk as d
on a.roll=d.[sr no]

select a.name,a.roll,d.[sr no],d.[comapny_name] from kp as a
join pk as d
on a.roll=d.[sr no]
----------------------------
select * from kp a
left join pk d
on a.roll=d.[sr no]

select * from kp a
left outer join pk d
on a.roll=d.[sr no]
--------------------------
select * from kp as a
right join pk as d
on a.roll=d.[sr no]


select * from kp as a
right outer join pk as d
on a.roll=d.[sr no]
--------------------
select * from kp as a
full join pk as d on
a.roll=d.[sr no]