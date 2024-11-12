select * from worker

select gender,count(*) from worker group by gender

select first_name ,salary,a.gender,b.gender_total
 from worker as a
 inner join
 (select gender,count(*) as gender_total from Worker group by gender) as b
 on a.gender=b.gender

select first_name ,salary,a.gender,b.gender_total,b.sum_salary,b.max_salary,b.min_salary,b.avg_salary
 from worker as a
 inner join
 (select gender,count(*) as gender_total,sum(salary) as sum_salary,max(SALARY) as max_salary,min(salary) as min_salary,avg(salary) as avg_salary 
 from Worker group by gender) as b
 on a.gender=b.gender


 --------------
 select first_name ,gender,salary,count(gender) over(partition by gender ),
 sum(SALARY) over(partition by gender )sum_salary,
 max(SALARY) over(partition by gender )max_salary,
 min(SALARY) over(partition by gender )min_salary,
 avg(SALARY) over(partition by gender )avg_salary
 from Worker

 select first_name ,gender,salary,DEPARTMENT,count(gender) over(partition by gender,department )as grand_total,
 sum(SALARY) over(partition by gender,department )sum_salary,
 max(SALARY) over(partition by gender,department )max_salary,
 min(SALARY) over(partition by gender,department )min_salary,
 avg(SALARY) over(partition by gender,department )avg_salary
 from Worker
 ------------

 select *,sum(salary) over(partition by gender) from worker
 select *,count(salary) over(partition by gender) from worker
 select *,max(salary) over(partition by gender) from worker
 select *,min(salary) over(partition by gender) from worker
 select *,avg(salary) over(partition by gender) from worker
 -----------
 select *,sum(salary)over(partition by department) from Worker
 select *,count(salary)over(partition by department) from Worker
 select *,max(salary)over(partition by department) from Worker
 select *,min(salary)over(partition by department) from Worker
  select *,avg(salary)over(partition by department) from Worker
  ------------
select * ,row_number()over(order by first_name) as full_name from worker
select * ,row_number()over(order by first_name desc) as full_name from worker

--------------
select *,ROW_NUMBER() over (partition by gender order by first_name) as full_name from worker

select *,ROW_NUMBER() over (partition by department order by first_name) as full_name from worker

select *,ROW_NUMBER() over (partition by department order by last_name) as full_name from worker
--------------
select * from worker

select *,rank() over(order by salary desc) as [rank] from worker

select *,rank() over(partition by gender order by salary desc) as [rank] from worker
-------------
select * ,dense_rank()over(order by salary desc) as [dense_rank] from worker

select *,rank()over(partition by gender order by salary desc) as [Rank] ,dense_rank() over(partition by gender order by salary desc)[dense_rank]from Worker

select *,rank()over( order by salary desc) as [Rank] ,dense_rank() over( order by salary desc)[dense_rank]from Worker

