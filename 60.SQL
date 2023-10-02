--  List the employees who joined in the month of DEC.
select ename,hiredate from emp
where to_char(hiredate,'MON')= 'DEC'
