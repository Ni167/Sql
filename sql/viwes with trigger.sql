use nitin

select * from kp
select * from pk

create view  doggii 
as
select * from kp as a
inner join pk as b
on a.roll=b.[sr no]

delete doggii where roll=4

select * from doggii


create trigger nf_nitin
on doggii
instead of delete
as
begin
delete from kp where roll in
(select roll from deleted)
delete from pk where [sr no] in
(select roll from deleted)
end