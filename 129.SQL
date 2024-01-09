-- List the names of the employees who are getting the highest salary dept wise.
SELECT E.ENAME,E.DEPTNO,E.SAL FROM EMP E
WHERE E.SAL IN(SELECT MAX(SAL) FROM EMP
GROUP BY DEPTNO);
