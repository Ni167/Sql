select * from pk
select * from kp

select * from kp as 
a cross apply fn_nitin(a.roll) as b

select * from kp as 
a outer apply fn_nitin(a.roll) as b


----on a.roll=b.[sr no]

alter function fn_nitin(@t_id int)
returns table
as
return
(
select * from pk
where [sr no]=@t_id
)

select * from fn_nitin(2)