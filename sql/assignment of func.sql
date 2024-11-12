alter function uno(@a int,@b int,@c int)
returns varchar (100)
as
begin
declare @msg varchar(100)
if(@a>@b and @A>@c)
set @msg=('a is bigger'+' '+cast(@a as varchar ))
else if(@b>@C and @b>@a)
set @msg=('b is bigger'+' '+cast(@b as varchar ))
else
set @msg=('c is bigger'+' '+cast(@c as varchar ))
return @msg
end

select dbo.uno(45,65,78)