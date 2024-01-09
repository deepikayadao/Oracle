-- List the manager no and the number of employees working for those managers in 
the ascending. 
select MGR,count(ename) from emp
group by MGR
order by MGR ASC;
