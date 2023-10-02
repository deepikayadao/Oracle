-- Compute daily salary of JONES.
select ename,(sal/30)as daily_sal from emp
where ename = 'JONES';
