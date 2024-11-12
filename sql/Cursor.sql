use nitin
select * from worker

declare aman cursor scroll for select * from worker order by SALARY desc
open aman
fetch absolute 4 from aman
close aman
deallocate aman

declare aman cursor scroll for select * from worker 
open aman
fetch first  from aman
fetch next  from aman
fetch last from aman
fetch prior from aman
fetch absolute 4 from aman
fetch relative -1 from aman
close aman
deallocate aman

-------------------
declare aman cursor scroll for select worker_id,first_name,last_name from worker 
declare @nitin_id int,@nitin_name varchar(50),@sur_name varchar(50)
open aman
fetch first  from aman into @nitin_id ,@nitin_name,@sur_name
print 'Employee is:'+cast(@nitin_id as varchar(50))+'  '+@nitin_name+'  '+@sur_name
fetch next  from aman into @nitin_id ,@nitin_name,@sur_name
print 'Employee is:'+cast(@nitin_id as varchar(50))+'  '+@nitin_name+'  '+@sur_name
fetch last from aman into  @nitin_id ,@nitin_name,@sur_name
print 'Employee is:'+cast(@nitin_id as varchar(50))+'  '+@nitin_name+'  '+@sur_name
fetch prior from aman into  @nitin_id ,@nitin_name,@sur_name
print 'Employee is:'+cast(@nitin_id as varchar(50))+'  '+@nitin_name+'  '+@sur_name
fetch absolute 4 from aman into  @nitin_id ,@nitin_name,@sur_name
print 'Employee is:'+cast(@nitin_id as varchar(50))+'  '+@nitin_name+'  '+@sur_name
fetch relative -1 from aman into  @nitin_id ,@nitin_name,@sur_name
print 'Employee is:'+cast(@nitin_id as varchar(50))+'  '+@nitin_name+'  '+@sur_name
close aman
deallocate aman
