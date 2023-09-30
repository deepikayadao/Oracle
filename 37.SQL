 -- List the employee who joined in 80’s.  
select * from emp
where to_char(hiredate,'YY') between 80 and 89; 
