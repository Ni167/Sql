use nitin
select * from pk
------------
create trigger a
on pk
after insert
as
begin
print 'some one inserted data'
end

insert into pk values
(4,'tcs',60000)
------------
alter trigger a
on pk
after delete
as
begin
print 'some one deleted data'
end
---------------
delete  pk where [sr no]=4
---------------
alter trigger a
on pk
after delete
as
begin
print 'some one deleted data'
end
--------------
alter trigger a
on pk
after update
as
begin
print 'some one updated data'
end

update pk set [sr no]=14 where [sr no]=13
----------------
select * from pk
------------
alter trigger a
on pk
after insert
as
begin
select * from inserted
end
---------------
alter trigger a
on pk
after delete
as
begin
select * from deleted
end

select * from pk

delete from pk where [sr no]=4
-------------
alter trigger a
on pk
after update
as
begin
select * from inserted
select * from deleted
end

select * from pk


update pk set [sr no]=14 where [sr no]=13

sp_helptext a