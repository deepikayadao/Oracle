-- Display the name, salary and commission for all employees whose commission 
amount is greater than their salary increased by 10%

select ename, sal+(sal*0.1) as sal,comm from emp
where comm> sal;
