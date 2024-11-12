create table ji
(employ_id int,
name varchar(100),
manager_id int)
select * from ji

insert into ji values
(1,'nitin',5),
(2,'shyam',4),
(3,'raj',3),
(4,'ketan',2),
(5,'roshan',1)
select a.employ_id,a.name,b.name as manager_name from ji as a join ji as b 
on a.employ_id=b.manager_id
select * from ji