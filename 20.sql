-- List all the employees joined on 1st may 81.
select ename,hiredate from emp
where to_char(hiredate,'DD-MON-YY')='01-MAY-81';
