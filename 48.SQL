-- List the name and salary of employees who can earn more than 1500 and are in
department 10 or 30. Label the columns Employee and Monthly Salary 
respectively.

select ename as Employee,sal as Monthly_Salary  from emp
where deptno in(10,30) and sal >1500;
