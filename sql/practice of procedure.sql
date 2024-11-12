select * from hello
delete hello where name is null
-----------------------------
select * from hello where roll>13
-------------------
create procedure lo
as
begin
select * from hello where roll>13
end

lo
execute lo
---------------------------
alter procedure lo
as
begin
select * from hello where roll>13
select * from hello where roll=13
select * from hello where roll!=13
end

lo
exec lo
----------------------
alter procedure lo
@a varchar(100),
@B int
as
begin
	select * from hello where name=@A
	select * from hello where roll!=@b

end
lo 'nitin',15
lo @b=14,@A='nitin'
------------------
alter proc lo
@A varchar (100)='nitin',
@b int=16
with encryption
as
begin
select * from hello where name=@a
select * from hello where roll=@b
end

lo 'aaryan',12
lo 15
sp_helptext lo
---------------------------------------
alter procedure lo 
@a varchar (100),
@b int ,
@c int,
@d int
as
begin
insert into hello values
(@A,@b,@c,@d)
end
lo 'monu',12,19,45000.00
select * from hello