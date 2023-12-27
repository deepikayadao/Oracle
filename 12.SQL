-- 12. List the Ename and Salary is increased by 15% and expressed as no.of Dollars. 
SELECT FIRST_NAME,
       to_char(1.15*SALARY,'$99,999') AS SALARY
FROM employees;
