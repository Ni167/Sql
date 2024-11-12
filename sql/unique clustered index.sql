use nitin
-----------
select * into gh from Worker

select * from gh

create unique clustered index ghji_jg on gh (worker_id asc)
create unique nonclustered index shya_jk on gh (first_name asc)

insert into gh values
(8,'nitin','gupta',65000.00,'2014-04-12 09:00:00','Hr','male','jk')
delete gh where worker_id=10

sp_helpindex gh
drop index gh.shya_jk