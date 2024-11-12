use nitin
select * from worker
---------
insert into worker values
(9,'Nitin','Gupta',25000,cast('2014-06-25' as datetime),'cashier','male','j&k')

delete from worker where worker_id=9

---------
create trigger tr_customer_instead_insert
on worker
instead of insert
as
begin
	print 'ypu are not allowed to insert data in this table !!'
end
-----------
create trigger tr_customer_instead_Update
on worker
instead of update
as
begin
	print 'ypu are not allowed to update data in this table !!'
end
-----------------
update worker set first_name='Nitin' where worker_id=6
---------------
create trigger tr_customer_instead_delete
on worker
instead of delete
as
begin
	print 'ypu are not allowed to delete data in this table !!'
end
-----------------
delete from worker where worker_id=6
------------------
drop trigger tr_customer_instead_delete
-------------
create table customer_audit_table(audit_id int primary key identity,
Audit_information varchar(max))

select * from customer_audit_table
----------
create trigger tr_customer_instead_insert_Audit
on worker
instead of insert
as
begin
	insert into customer_audit_table values('someone tries to insert data in custmer table at'+ cast (getdate()as varchar (50)))
end
----------
create trigger tr_customer_instead_update_Audit
on worker
instead of update
as
begin
	insert into customer_audit_table values('someone tries to update data in custmer table at'+ cast (getdate()as varchar (50)))
end
--------------
create trigger tr_customer_instead_delete_Audit
on worker
instead of delete
as
begin
	insert into customer_audit_table values('someone tries to delete data in custmer table at'+ cast (getdate()as varchar (50)))
end
--------------
select * from worker
select * from customer_audit_table