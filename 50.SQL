-- Display the name and job of all employees who do not have a MANAGER.
select ename, job from emp
where mgr is null;
