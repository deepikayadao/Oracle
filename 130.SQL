-- . List the no. of employees in each department where the no. is more than 3.
select deptno,count(ename)from emp
group by deptno
having count(ename)>3;
