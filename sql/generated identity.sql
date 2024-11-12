create table yu
(name varchar (50),
id int identity(100,1))

select * from yu

insert into yu values
('baccha')
('putin'),
('nitin'),
('pooja'),
('shyam'),
('nitesh')

create table nu
(

id int identity,
date_time datetime)

insert into nu values
(getdate())

select * from nu

create trigger table_trigger_nitin
on yu
after insert
as
begin
insert into nu values
(getdate())
end

select SCOPE_IDENTITY()
select @@IDENTITY

drop table yu
drop table nu

select ident_current('nu')