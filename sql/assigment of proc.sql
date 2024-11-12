use nitin

select * from worker

select * from worker order by salary desc

declare aman cursor scroll for select * from worker order by salary desc
open aman
fetch absolute 2 from aman
close aman 
deallocate aman

alter procedure kl
@a int
as
begin
declare aman cursor scroll for select * from worker order by salary desc
open aman
fetch absolute @a  from aman
close aman 
deallocate aman
end

kl @a=8