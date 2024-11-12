select * from worker
alter table worker add states varchar (100)
update worker set states='kerla' where worker_id=1
update worker set states='ap' where worker_id=2
update worker set states='mp' where worker_id=3
update worker set states='up' where worker_id=4
update worker set states='goa' where worker_id=5
update worker set states='maharastra' where worker_id=6
update worker set states='bihar' where worker_id=7
update worker set states='karnatak' where worker_id=8

select gender,department,sum(salary) as total from worker group by 
grouping sets(
(gender,department),
(gender),
(department),
()

)