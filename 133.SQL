-- 3. Find all the employees who earn the minimum Salary for each job wise in 
ascending order. 
SELECT ENAME,JOB,EMPNO,SAL FROM EMP
WHERE (JOB,SAL) IN (SELECT JOB,MIN(SAL) FROM EMP
GROUP BY JOB)
ORDER BY JOB,SAL ASC;
