select getdate() as present_time
select getdate()
select SYSDATETIME()
select CURRENT_TIMESTAMP
select convert(varchar,getdate(),100)


select format(GETDATE(),'dddd') as present_date
select format(GETDATE(),'dd:MM:yy') as present_date
select format(GETDATE(),'ddd:MMM:yyy') as present_date
select format(GETDATE(),'dddd:MMMM:yyyy') as present_date
---------
select format(GETDATE(),'hh:mm:ss') as present_date
select format(GETDATE(),'hhh:mmm:sss') as present_date
select format(GETDATE(),'hhhh:mmmm:ssss') as present_date
---------
select format(GETDATE(),'dddd:MMMM:yyyy hh:mm:ss tt') as present_date
---------
select format(cast('10-10-2000' as date),'dddd-MMMM-yyyy')
------
select format(cast('10-10-2000 8:56:20' as datetime),'dddd-MMMM-yyyy hhhh-mmmm-ssss tt')
-------Datename
select datename(year,getdate()) as year
select datename(month,getdate()) as month
select datename(day,getdate()) as day
select datename(HOUR,getdate()) as hour
select datename(minute,getdate()) as minute
select datename(SECOND,getdate()) as second
--------
select datename(year,'2006-09-07 21:08:55') as year
select datename(day,'2006-09-07 21:08:55') as day
select datename(MONTH,'2006-09-07 21:08:55') as month
select datename(HOUR,'2006-09-07 21:08:55') as hour
select datename(MINUTE,'2006-09-07 21:08:55') as minute
select datename(SECOND,'2006-09-07 21:08:55') as second
---------
SELECT DATENAME(WEEKDAY, '2006-09-07 21:08:55') AS day;
SELECT DATENAME(WEEK, '2006-09-07 21:08:55') AS day;
-----------
select DATEDIFF(HOUR,'2024-11-07',getdate())
select DATEDIFF(day,'2024-09-08','2024-10-10')
------
select dateadd(hour,6,'5:55:55')
-------
select eomonth(getdate())

select eomonth(DATEADD(month,-1,getdate()))

SELECT FORMAT(EOMONTH(DATEADD(MONTH, -1, GETDATE())), 'dddd') AS day_name;


select datepart(year,getdate())
select datepart(MONTH,getdate())
select datepart(DAY,getdate()) 
select datepart(hour,getdate())
select datepart(MINUTE,getdate())
select datepart(SECOND,getdate())
-----------
select day(getdate())
select year(getdate())
select month(getdate())