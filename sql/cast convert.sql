select * from worker
select first_name+' '+last_name as full_name from worker
select first_name+' '+cast(salary as varchar) as complete_name from worker
select first_name+' '+convert(varchar,salary) as complete_name from worker