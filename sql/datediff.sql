use nitin

select * from worker

select EOMONTH(getdate())as last_date from worker

select EOMONTH(JOINING_DATE)as last_date from worker

select EOMONTH(dateadd(month,-1,joining_date ))as last_date from worker

select format((dateadd(month,1,joining_date)),'dddd')as last_date from worker

select format((dateadd(month,0,joining_date)),'dddd')as last_date from worker

select format((dateadd(month,-1,joining_date)),'dddd')as last_date from worker


select * from worker
select dateadd(MONTH,-1,joining_date) from worker

select dateadd(MONTH,-1,getdate()) from worker