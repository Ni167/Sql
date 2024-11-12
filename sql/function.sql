use nitin
select * from kp 
---------------------
alter function lk()
returns varchar (100)
as
begin
return 'hello my name is nitin'
end

select dbo.lk() as name
-----------------------
alter function lp(@A int,@b int)
returns int
as
begin 
return @A*@B
end

select dbo.lp(8,6)

----------------------
create function vote(@A int)
returns varchar (100)
as
begin
declare @msg varchar (100)
if(@a>18)
set @msg='eligible'
else if (@a=18)
set @msg='try next year'
else
set @msg ='not eligible'
return @msg
end

select dbo.vote(19)