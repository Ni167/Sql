alter function noo(@A int,@B int,@c int)
returns varchar (100)
as
begin
declare @msgg varchar (100)
if(@a>@b and @a>@c)
	set @msgg=('a is bigger' + convert ( varchar ,@A))
else if(@B>@a and @B>@c)
	set @msgg=('b is bigger' + convert ( varchar,@b))
else
	set @msgg=('c is bigger' + convert ( varchar,@C))
	return @msgg
end

select dbo.noo(45,65,78)