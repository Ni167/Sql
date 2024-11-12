create trigger server_nitin
on all server
for create_table
as
begin
rollback
	print 'you have just created table'
end

drop trigger server_nitin on all server

create table vf(id int)