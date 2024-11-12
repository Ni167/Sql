use nitin

select * from diwali

alter table diwali drop column status , unnamed1
drop table diwali

with delete_duplicate_cte
as
(
select occupation,ROW_NUMBER()over(partition by occupation order by occupation)
as [row_duplicate]
from diwali
)
delete delete_duplicate_cte where [row_duplicate]>1