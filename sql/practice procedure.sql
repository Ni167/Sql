use nitin
select * from worker
--------------------
create procedure amn
as
begin
select * from worker
end

amn
exec amn
execute amn
---------------
alter procedure amn
as
begin
select * from worker where worker_id>2
select * from worker where FIRST_NAME='vipul'
select * from worker where worker_id<>2
select * from worker where cast( FIRST_NAME as varchar) in('Monika','Satish')

end

amn
-----------------
alter procedure amn
@a int,
@b varchar (100)
with encryption
as
begin
select * from worker where worker_id=@A
select * from worker where FIRST_NAME=@b
end

amn 8,'vipul'
amn @b='Monika',@a=5
------------------
alter procedure amn
@a int,
@b varchar (100)
with encryption
as
begin
select * from worker where worker_id=@A
select * from worker where FIRST_NAME=@b
end
amn 2,'Geetika'

sp_helptext amn
---------------------
create procedure bg
@a int,
@b varchar (50),
@c varchar (50),
@d int,
@e date,
@f varchar(50),
@g varchar (50),
@h varchar (40)
as
begin
insert into worker values(@a,@b,@c,@d,@e,@f,@g,@h)
end


bg 10,'Nitin','Gupta',78000,'02-25-2006' ,'HR','male','jk'
select * from worker
------------------------
alter procedure bgg
@b int,
@c int
as
begin
update Worker set worker_id=@b where worker_id=@c
end

bgg 9,10
select * from worker
-------------------
alter proc bgg
@a int
as
begin
delete worker where worker_id=@a
end
bgg 9

select * from worker
