--  Find out all the employees who earn highest salary in each job type. Sort in 
descending salary order
SELECT ENAME,JOB,SAL FROM EMP
WHERE (JOB,SAL) IN (SELECT JOB,MAX(SAL) FROM EMP GROUP BY JOB)
ORDER BY JOB DESC;
