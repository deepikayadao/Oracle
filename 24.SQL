-- List the employees who have joined in the year 1981.
select * from emp
where to_char(hiredate,'YYYY')= '1981';
