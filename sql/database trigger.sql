create database nitin_trigger

use nitin_trigger

create trigger nitin_trigger_table
on database
for create_table
as
begin
rollback
print('some one create table')
end
drop trigger nitin_trigger_table on database
-----------------
create table nitin(id int)
select * from nitin
--------------------
create trigger nitin_trigger_alter
on database
for alter_table
as
begin
rollback
print('some one alter table')
end

alter table nitin add name varchar(100)
alter table nitin drop column name
----------------
create trigger nitin_trigger_drop
on database
for drop_table
as
begin
rollback
print('some one alter table')
end
-------
drop table nitin
-----------
create trigger nitin_trigger_ddl
on database
for create_table,alter_table,drop_table
as
begin
rollback
print('some one alter table')
end
----------
create table nitiin(id int)
alter table nitiin add name varchar(100)
drop table nitiin
drop trigger nitin_trigger_ddl on database
----------
create trigger nitin_trigger_trigger
on database
for create_trigger
as
begin
rollback
print('some one create table')
end
drop trigger nitin_trigger_trigger on database
-----------
create trigger nitin_trigger_trigger
on database
for create_trigger
as
begin
rollback
print('some one create table')
end
disable trigger nitin_trigger_trigger on database
enable trigger nitin_trigger_trigger on database
---------------
create trigger nitin_trigger_triggerl
on database
for alter_trigger
as
begin
rollback
print('some one create table')
end
----------
create trigger nitin_trigger_trigger2
on database
for drop_trigger
as
begin
rollback
print('some one create table')
end
-----------
drop trigger nitin_trigger_trigger on database