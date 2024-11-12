use nitin
-------
create function fn_gentleman(@last_name varchar (20) )
returns @mytable table(Nitin_id int,nitin_name varchar (50),last_nitin varchar(50))
as
begin
insert into @mytable
select worker_id,first_name,LAST_NAME from worker where last_name=@last_name
return
end

select * from dbo.fn_gentleman('Verma')

select * from Worker