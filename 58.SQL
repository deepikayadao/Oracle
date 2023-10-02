-- List those Employees whose Salary is odd value. 
select ename,sal from emp
where mod(sal,2)=1; 
