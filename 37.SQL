 -- List the employees whose salary is ending with 00. 
select * from emp
where to_char(hiredate,'YY') between 80 and 89; 
