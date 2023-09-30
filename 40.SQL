--  List the Managers of dept 10 or 20.
-- select * from emp
where job = 'MANAGER'  and (deptno= 10 or deptno = 20);

-- select * from emp
where job = 'MANAGER' and deptno in (10,20);
