-- Display the name of all employees who have two Ls in their name and are in
department 30 or their manager is 7782.
select* from emp
where ename like '%LL%' and deptno = 30 or mgr = 7782;
