-- Find Average salary and Average total remuneration for each Job type.
SELECT JOB,AVG(SAL+COMM) FROM EMP
GROUP BY JOB;
