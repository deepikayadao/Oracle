-- Find out the most recently hired employees in each Dept order by Hiredate.
SELECT * FROM EMP
WHERE (DEPTNO,HIREDATE)IN
(SELECT DEPTNO,MAX(HIREDATE) FROM EMP
GROUP BY DEPTNO)
ORDER BY HIREDATE DESC;
