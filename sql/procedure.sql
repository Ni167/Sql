use nitin
select * from kp
-------------
select * from kp where roll>5


create procedure amn
as
begin 
select * from kp where roll>5
end

amn
drop proc amn
-----------------------
alter procedure amnn
as
begin 
select * from kp where roll>6
select * from kp where name='nilu'
end

amnn
---------------------------
create procedure amnnn
@A int,
@b varchar (100)
as
begin 
select * from kp where roll=@A
select * from kp where name=@b
end

amnnn 4,'azzu'
amnnn @A=4,@b='shyam'
----------------
create procedure amnnnn
@A int=1,
@b varchar (100)='nitin'
with encryption
as
begin 
select * from kp where roll=@A
select * from kp where name=@b
end
amnnnn

amnnnn 4
sp_helptext amnnnn
drop procedure amn