select * from kp


create procedure loki
@A int,
@B varchar(100),
@c int
as 
begin
insert into kp values
(@A,@B,@C)
end

loki 9,'abdull',26
-----------------------
create procedure lokii
@a varchar (100),
@b int

as
begin
update kp set name=@A where roll=@B
end

lokii 'bdull',9
--------------------
create procedure lokiii
@a int
as
begin
delete kp where roll=@A
end

lokiii 9
--------------------------


