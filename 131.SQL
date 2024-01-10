-- . List the names of depts. Where at least 3 are working in that department. 
SELECT D.DNAME,COUNT(E.ENAME) AS NUM_OF_EMP FROM EMP E,DEPT D
WHERE E.DEPTNO = D.DEPTNO
GROUP BY D.DNAME
HAVING COUNT(E.ENAME)>=3;
