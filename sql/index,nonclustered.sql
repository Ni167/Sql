
use nitin
select * from worker

create index ix_fte_salary on worker (salary asc)

sp_helpindex worker

select * from worker where salary >100000 and salary<500000

drop index worker.ix_fte_salary
----------------------
select * from nitesh
alter table nitesh alter column worker_id int not null
alter table nitesh add primary key (worker_id)

sp_helpindex nitesh
drop index nitesh.ixx_fte_salary
------------------
create nonclustered index ix_fte_salary on nitesh (salary asc)
create index ixx_fte_salary on nitesh (first_name asc,salary asc)
