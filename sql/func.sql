use nitin

create function showmsg()
returns varchar (100)
as
begin
return 'hello my name is nitin'
end

select dbo.showmsg()
----------------------
create function no_take(@num as int)
returns int
as
begin
return(@num*@num)
end

select dbo.no_take(2)
-------------------
alter function take_no(@sum as int,@bcount as int)
returns  int
as
begin
return (@sum+@bcount)
end

select dbo.take_no(15,20) as total
------------
create function assg_no(@a as int)
returns  varchar(100)
as
begin
	declare @b varchar (100)
if(@a>18)
	set @b='you are eligible'
else if(@a=18)
	set @b='next year'
else
	set @b='not eligible'
	return @b
end

select dbo.assg_no(18)
---------------------
create function sn_nitin()
returns table
as
return(select * from Worker)

select * from dbo.sn_nitin()
select dbo.sn_nitin()
----------------
create function mn_nitin(@a int)
returns table
as
return(select * from worker where Salary=@a)

select * from mn_nitin(500000)
--------------
select * from worker
select * from Title

select * from mn_nitin(500000) as a
inner join title as b
on a.worker_id=WORKER_REF_ID

select * from worker as a
inner join title as b
on a.worker_id=WORKER_REF_ID where WORKER_TITLE='manager'