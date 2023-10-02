-- Display the name, job, and salary of all the employees whose job is MANAGER or
ANALYST and their salary is not equal to 1000, 3000, or 5000.
select ename,job,sal from emp
where job in( 'MANAGER','ANALYST') and sal != 1000 and sal!= 3000 and sal!=5000;
