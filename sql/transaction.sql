select * from golu
delete from golu where roll=17
----------------------------
begin transaction 
delete from golu where roll=19

rollback transaction

commit transaction
-----------------------
begin transaction
delete from golu where roll=20


save transaction nittin

rollback transaction nittin
---------------
set implicit_transactions on 
delete golu
drop table golu

set implicit_transactions off
select @@TRANCOUNT