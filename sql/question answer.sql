select * from worker
select * from bonus
select * from Title

----Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select first_name as worker_name from worker
-----Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper 
select upper(first_name) from worker
-----Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
select distinct(DEPARTMENT)from worker
----Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
select LEFT(first_name,3)  first_name from worker
-----Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
select charindex('a',first_name) from worker where first_name='amitabh'
----Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from the--don't know
select distinct(department)from worker
-----Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
select replace(first_name,'a','A') from worker
-----Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.
select first_name+' '+last_name as complete_name from worker
-----Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker order by first_name asc
------Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
select * from worker order by first_name asc,department desc
------Q-13. Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
select * from worker where first_name in('vipul','satish')
----Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table.
select * from worker where first_name not in ('vipul','satish')
-----Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from worker where department='admin'
------Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker where first_name like '%a%'
-----Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker where first_name like '%a'
----Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends 
select * from worker where first_name like '%h'
------Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker where salary between 100000 and 500000 
---Q-20. Write an SQL query to print details of the Workers who joined in Feb’2014.
select * from Worker where MONTH(JOINING_DATE)=2 and YEAR(JOINING_DATE)=2014
SELECT * FROM Worker WHERE JOINING_DATE >= '2014-02-01' AND JOINING_DATE <= '2014-02-28';
-----Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(department) from worker where DEPARTMENT='admin'
-----Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000
select * from worker where salary>=50000 and salary<=100000
------Q-23. Write an SQL query to fetch the no. of workers for each department in descending order.
select * from worker order by FIRST_NAME desc
-----Q-24. Write an SQL query to print details of the Workers who are also Managers.
select * from worker where worker_id in(select worker_ref_id from title where worker_title='manager')
--------Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
select WORKER_TITLE,count(worker_ref_id) from Title group by WORKER_TITLE having count(worker_ref_id)>1
select department,count(department) from worker group by department having count(department)>1
select * from title
------Q-26. Write an SQL query to show only odd rows from a table.
select * from worker where worker_id%2=1
-----Q-27. Write an SQL query to show only even rows from a table.
select * from worker where worker_id%2=0
-----Q-28. Write an SQL query to clone a new table from another table.
select * into nitesh from worker
select * from nitesh
--------Q-29. Write an SQL query to fetch intersecting records of two tables.
select worker_id from worker
intersect
select worker_ref_id from title
---------Q-30. Write an SQL query to show records from one table that another table does not exists
select * from worker  a
full join Bonus b 
on a.WORKER_ID=b.WORKER_REF_ID
where WORKER_REF_ID is null
-----Q-31. Write an SQL query to show the current date and time.
select getdate()
------Q-32. Write an SQL query to show the top n (say 10) records of a table
select * from worker where worker_id in(select top 10 worker_id from Worker)
--------Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
select max(salary) from worker where worker_id=5
----------------Q-35. Write an SQL query to fetch the list of employees with the same salary.
select *from Worker where SALARY in( select salary from worker group by salary having count(salary)>1)
----Q-36. Write an SQL query to show the second-highest salary from a table.
select * from worker where salary in(select max(salary) from worker where salary  not in (select max(salary) from worker))
select max(salary) from worker where SALARY <(select max(salary) from worker)
------Q-38. Write an SQL query to fetch intersecting records of two tables.
select * from worker where worker_id in(select worker_id from worker
intersect
select WORKER_REF_ID from Title)
--------Q-39. Write an SQL query to fetch the first 50% of records from a table.
select top 50 percent * from worker
---------Q-40. Write an SQL query to fetch the departments that have less than five people in them.
select DEPARTMENT, count(DEPARTMENT) from Worker group by DEPARTMENT having count(DEPARTMENT)<5
------Q-41. Write an SQL query to show all departments along with the number of people in there.
select  count(department),DEPARTMENT from worker group by DEPARTMENT 
-------Q-43. Write an SQL query to fetch the first row of a table.
select top 1 percent * from Worker
-----Q-42. Write an SQL query to show the last record from a table.
select top 1 percent * from worker order by worker_id desc
-----Q-44. Write an SQL query to fetch the last five records from a table.
select top 5   * from worker order by worker_id desc
------Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
select DEPARTMENT,max(salary) from worker group by department
-----Q-46. Write an SQL query to fetch three max salaries from a table.
select top 3 * from worker order by salary desc
-------Q-47. Write an SQL query to fetch three min salaries from a table.
select top 3 * from worker order by salary asc
------Q-48. Write an SQL query to fetch nth max salaries from a table.
SELECT DISTINCT salary
FROM worker
ORDER BY salary DESC
LIMIT 1 OFFSET n-1;
------Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
select department,sum(salary) as total  from worker group by department
-----Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
select * from worker where salary in (select max (salary)  from worker)