--  List the employees who have joined on the following dates 1 may 81,17 Nov 81,30 
Dec 81.
select * from emp
where to_char(hiredate,'DD-MON-YY') in('01-MAY-81','17-NOV-81','30-DEC-81');
