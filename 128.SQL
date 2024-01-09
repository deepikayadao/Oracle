-- Display dname, grade, No. of employees where at least two employees are clerks.
SELECT D.DNAME,E.JOB, COUNT(ENAME) FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO AND E.JOB = 'CLERK'
GROUP BY D.DNAME,E.JOB
HAVING COUNT(ENAME)>= 2;
