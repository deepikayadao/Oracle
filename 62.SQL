-- List the employees whose Deptno is available in his Salary. 
select ename,sal,deptno from emp
where INSTR(to_char(sal),to_char(deptno))>0;
