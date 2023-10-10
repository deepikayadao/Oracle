create table empl(eno number,ename varchar2(100),address varchar2(100));

insert into empl values(4,'shree','Mumbai');

create table depart
(depno varchar2(5),
dname varchar2(100),
eno number);

insert into depart values('d3','MRKT',4);

select * from empl;
select * from dept;

select * from empl,depart where empl.eno=depart.eno;

select ename,address from empl Natural join depart;

select ename,address,loc from empl e,depart d
where e.eno = d.eno and e.address=d.loc;

select ename,address,loc from emp1 e , dept d
where e.deptno = d.deptno
and e.address = d.loc;


select ename,address,loc from empl e join depart d
on e.eno=d.eno
and e.address=d.loc;

select * from emp cross join dept;

select e.eno,d.eno from
depart d right outer join empl e
on e.eno=d.eno;
where e.address ='Mumbai';

select deptno,max(sal) from emp
group by deptno;

select * from dept; 

select * from emp;

select to_char(sysdate, 'Day Ddsp Month YYYY') from dual;


SELECT ename, hiredate,
TO_CHAR(hiredate, 'Day Ddsp Month YYYY') AS REVIEW
FROM emp;



SELECT
  ename,
  hiredate,
  TO_CHAR(
      next_day(add_months(hiredate, 6), 'MONDAY'),
    'Day", the "Ddsp" of "Month", "YYYY'
  ) AS REVIEW
FROM emp;

SELECT ename, hiredate, TO_CHAR(hiredate,'Day') as DAY from emp order by MOD(TO_CHAR(hiredate,'D') + 5, 7) ;

select deptno, count(*) 

select deptno, count(*) from emp group by deptno having count(*)>3;

select ename,nvl(to_char(comm),'No Commission') as commission from emp;

select deptno, count(ename) from emp
having count(empno)>3
group by deptno;

having count(empno)>3;

select * from emp;

select ename,nvl(to_char(comm),'No Commission') as commission from emp;

select ename,NVL(to_char(comm),'NO commission') as comm from emp;

 select deptno,sum(sal) from emp
 group by deptno
 having sum(sal)>10000;
 
 select deptno,Min(sal), max(sal) from emp 
 group by deptno;
 
 select job,count(ename) as No_emp from emp
 group by job;
 
 select ename,hiredate, to_char(hiredate,'DAY') as DAY  from emp;
 
 create or replace view v1
 as select * from emp where deptno =20;
 
delete from v2 where deptno =10;

select * from v2;

update v2 set dname = 'xyz' where ename = 'sales';

Create or replace force view v1
As select * from amz_data;
Select * from user_views;

create or replace view v2
as 
select * from emp
where deptno =10 with check option;

select * from v2;
 
drop view v2;

exec dbms_mview.refresh(‘mv1’);

Create materialized view product1
refresh complete
as
select ename,sal from emp where sal>1000;

select * from empl;
select * from depart;
delete from empl where eno = 3;

insert into empl values(3,'Jay','Mumbai');


select ename,address from empl,depart where empl.eno =depart.eno; 

select ename,address,loc from empl,depart
where empl.eno = depart.eno and empl.address = depart.loc;

select ename,address,loc from empl e , depart d
where e.eno=d.eno
and lower(e.address) = lower(d.loc);
      
alter table depart add loc varchar(100);


select empl.*, depart.* from empl,depart where empl.eno = depart.eno;



select * from emp where sal>(select sal from emp where ename='BLAKE');

select * from(select rownum r, ename, job, sal from emp) where r=2;
   
Select * from emp where hiredate like ‘%81’ ;

CREATE TABLE salgrade (
  grade NUMBER,
  losal NUMBER,
  hisal NUMBER
);

SELECT * FROM salgrade;
select * from dept;

select ename,sal,grade,losal,hisal from emp,salgrade where sal between losal and hisal;


select ename,sal,grade,losal,hisal from emp 
join salgrade on sal between losal and hisal
where (deptno =  10 or deptno = 30) and grade!=4 and hiredate< '31-DEC-82'; 


select grade,ename,sal from emp,salgrade
where sal between losal and hisal and deptno in(10,30) and grade!= 4 and hiredate< '31-dec-82';
 
select ename,loc from emp join dept on emp.deptno = dept.deptno
where lower(ename) = 'smith';

select * from emp
where ename = 'SMITH';

select * from emp
where deptno = 20 and job = 'CLERK';

select ename,deptno from emp
where deptno = 10 or deptno = 20;

select * from emp
where hiredate < ('01-JAN-1981');

SELECT DISTINCT(JOB) FROM EMP;

SELECT emp.*, (SAL + SAL*20/100) as incr FROM EMP


WHERE SAL + SAL*20/100 >3000;

select * from emp
where sal+ SAl*20/100 >3000;

select * from emp
where sal+ sal*20/100 > 3000;

select ename, sal, losal,hisal,grade from emp,salgrade; 
join salgrade on sal between losal and hisal
where (deptno =  10 or deptno = 30) and grade!=4 and hiredate< '31-DEC-82';

select ename,grade from emp,salgrade
where sal between losal and hisal and deptno in(10,30) and grade!=4 and hiredate<'31-DEC-82';

select * from emp
where to_char(hiredate,'DD')<'15';

DESCRIBE  emp;

select add_months(sysdate,1)from dual;

select to_char(sysdate,'dd/mm/yy')from dual;

 select ename,job from emp
 where job = 'MANAGER';

select ename ,to_char(sal*1.15,'$99,999') as sal from emp;

select ename || '_AND_' || job from emp;

select  ename || '(' ||lower(job)|| ')'  as Employee from emp; 

select distinct deptno,job from emp;

select * from emp
where ename = 'BLAKE';

select * from emp
where job = 'CLERK';

select empno,sal,comm from emp;

select distinct deptno from emp;

select * from emp
where hiredate = '01-MAY-81';


select * from emp
where job = 'MANAGER' or job = 'CLERK';

select * from emp
where job in('MANAGER','CLERK');

select * from emp
where to_char(hiredate,'DD-MON-YY') in('01-MAY-81','17-NOV-81','30-DEC-81');

select * from emp
where to_char(hiredate,'YYYY') in('1981');

select * from emp
where (sal*12) between 32000 and 40000;

select * from emp
where MGR in('7369','7890','7566','7900');

select * from emp
where hiredate between '01-JUL-81' and '31-DEC-81'
order by hiredate;


select * from emp
where ename in('MILLER','SMITH');

select * from emp
where ename = 'MILLER' and ename = 'SMITH';

select sal,ename from emp
where sal > 1000;

select ename,sal from emp
where ename!= 'JAMES';

select * from emp
where sal = ALL(1600,1600,1600);

select * from emp
where sal =ANY(800,1600,3000);

select * from emp
where sal=800 and sal=1600 and sal=3000;

select * from emp
where sal >ALL(800,1600,500);    

select * from emp
where sal=800 and sal=1600 and sal=4000;

where 1600 = 800 and 1600 = 1600 and 1600 = 4000
where (False and True) and False = False and False = False 

select * from emp;
where comm > sal;

select * from emp;
where annsal between '22000' and '45000';

select ename,job,mgr  from emp
where mgr is null;

select * from emp
where mgr is NULL;

select * from emp
where ename like'M%';

select * from emp
where sal in(800,1600,500);





select * from emp;
where sal=800 or sal=1200 or sal=1600;
select * from emp

select * from emp
where to_char(hiredate,'YY')= 81;

select * from emp
where length(sal)= 4 and sal like '%00';

select * from emp
where sal like '%00';

select * from emp
where sal like'%00';

select * from emp
where to_char(hiredate,'YY') between 80 and 89; 

select * from emp
where job = 'CLERK' and YOE > 8;

select * from emp
where job = 'MANAGER'  and (deptno= 10 or deptno = 20);

select * from emp
where job = 'MANAGER' and deptno in (10,20);

select * from emp
where ename like'A%' or ename like'M%';

select * from emp
where job ='SALESMAN' and deptno =30;

select distinct(deptno) from emp;

select ename as Employee,sal as Monthly_Salary  from emp
where deptno in(10,30) and sal >1500;

select * from emp
where sal not between 1500 and 2850;

select ename,job from emp
where mgr is null;

select ename,job,sal from emp
where job in( 'MANAGER','ANALYST') and sal != 1000 and sal!= 3000 and sal!=5000;

select ename, sal*1.10 as sal,comm from emp
where comm> sal;

select ename,  sal,comm from emp
where comm> sal*1.10;

select* from emp;
where ename like '%LL%' and deptno = 30 or mgr = 7782;

select ename,annsal from emp
where ename= 'SMITH';

select ename,(sal/30)as daily_sal from emp
where ename = 'JONES';

select avg(annsal) from emp;


select ename,sal from emp
where mod(sal,2)=1; 

select * from emp
where sal <1000 and sal> 100; 

select ename,hiredate from emp
where to_char(hiredate,'MON')= 'DEC';

select * from emp
where ename like '%A%'; 

select ename,sal,deptno from emp
where INSTR(to_char(sal),to_char(deptno))>0;

select INSTR(to_char(sal),to_char(deptno)),deptno,sal from emp;

insert into emp values(7850,'ABHI','MINES',7688,'15-SEP-20',4000,NULL,40,48000,2);

desc emp;
set         on;

begin
    dbms_output.put_line('Hello World ');
    dbms_output.put_line('Deepika Sushant'); 
    dbms_output.put_line('Better call shoel');
 end;


Declare
begin
 dbms_output.put_line('Hello World');
 begin
    dbms_output.put_line('Nested Block ');
 end;
end;

SET SERVEROUTPUT ON;

DECLARE 
    v varchar2(20) Not Null default 'Hello';
BEGIN
    dbms_output.put_line(v);
END;

SET SERVEROUTPUT ON;

DECLARE 
    v varchar2(20) Not Null default 'Hello';
BEGIN
    V:='PLSQL';
    dbms_output.put_line(v);
END;


DECLARE 
   v varchar2(20)  NOT NULL :=100;
BEGIN
    dbms_output.put_line(v||'Beginner to Advanced');
END;

DECLARE 
    v_date varchar2(20) Not Null:='Welcome';
BEGIN
    dbms_output.put_line(v_date||'Beginner to Advanced');
END;

DECLARE 
    v varchar2(20) Not Null:='Welcome';
BEGIN
    dbms_output.put_line(v||'Beginner to Advanced');
END;

DECLARE 
    v varchar2(20) := 2 + 25 * 3;
BEGIN
    dbms_output.put_line(v);
END;


DECLARE
    v varchar2(20):= 3*4 +18;
BEGIN
    dbms_output.put_line(v);
END;


DECLARE 
    v_text varchar2(50) NOT NULL DEFAULT 'Hello';
    v_number1 number := 50;
    v_number2 number(2) := 50.42;
    v_number3 number(10,2) := 50.42;
    v_number4 PLS_INTEGER := 50;
    v_number5 BINARY_float := 50.42;
    v_DATE1 DATE := TO_DATE('22-NOV-18 12:01:32', 'DD-MON-RR HH24:MI:SS');
    v_DATE2 timestamp := systimestamp;
    v_DATE3 timestamp(9) WITH TIME ZONE := systimestamp;
    v_DATE4 interval day(4) to second (3) := '124 02:05:21.012 ';
    v_DATE5 interval year to month := '12-3';
BEGIN
    V_TEXT := 'PL/SQL' || 'Course';
    DBMS_OUTPUT.PUT_LINE(V_TEXT);
    DBMS_OUTPUT.PUT_LINE(v_number1);
    DBMS_OUTPUT.PUT_LINE(v_number2);
    DBMS_OUTPUT.PUT_LINE(v_number3);
    DBMS_OUTPUT.PUT_LINE(v_number4);
    DBMS_OUTPUT.PUT_LINE(v_number5);
    DBMS_OUTPUT.PUT_LINE(v_DATE1);
    DBMS_OUTPUT.PUT_LINE(v_DATE2);
    DBMS_OUTPUT.PUT_LINE(v_DATE3);
    DBMS_OUTPUT.PUT_LINE(v_DATE4);
    DBMS_OUTPUT.PUT_LINE(v_DATE5);
END;


 

name type(size) [constaraint] := value

begin
    dbms_output.put_line('Hello World ');
    dbms_output.put_line('Deepika Sushant'); 
    dbms_output.put_line('Better call shoel');
 end;

DECLARE
    v_boolean boolean := true;
BEGIN
    dbms_output.put_line(sys.diutil.bool_to_int(v_boolean));
END;


declare 
v_boolean boolean := true;
begin
    dbms_output.put_line(sys.diutil.bool_to_int(v_boolean));
end;


desc employees;
declare
V_TYPE employees.JOB_ID%TYPE;
V_TYPE2 V_TYPE%TYPE;
V_TYPE3 employees.JOB_ID%TYPE ;
begin
v_type := 'IT_PROG';
v_type2 := 'SA_MAN';
v_type3 := NULL;
dbms_output.put_line(v_type);
dbms_output.put_line(v_type2);
dbms_output.put_line('HELLO' || v_type3);
end;

DECLARE
V_TYPE1 employees.Salary%TYPE;
V_TYPE2 V_TYPE1%TYPE;
V_TYPE3 V_TYPE1%TYPE;
BEGIN
V_TYPE1 := 5000;
V_TYPE2 := 1000;
V_TYPE3 := NULL;
dbms_output.put_line(V_TYPE1);
dbms_output.put_line(V_TYPE2);
dbms_output.put_line('SUSHANT' || V_TYPE2);
END;

begin <<outer>>
DECLARE
  --v_outer VARCHAR2(50) := 'Outer Variable!';
  v_text  VARCHAR2(20) := 'Out-text';
BEGIN 
  DECLARE
    v_text  VARCHAR2(20) := 'In-text';
    v_inner VARCHAR2(30) := 'Inner Variable';
 BEGIN
    --dbms_output.put_line('inside -> ' || v_outer);
    --dbms_output.put_line('inside -> ' || v_inner);
      dbms_output.put_line('inner -> ' || v_text);
      dbms_output.put_line('outer -> ' || outer.v_text);
  END;
  --dbms_output.put_line('inside -> ' || v_inner);
  --dbms_output.put_line(v_outer);
  dbms_output.put_line(v_text);
END;
END outer;


select * from employees where employee_id = :var_sql;



SET SERVEROUTPUT ON;
DECLARE
  v_number NUMBER := 30;
BEGIN
  IF v_number < 10 THEN
    dbms_output.put_line('I am smaller than 10');
  ELSIF v_number < 20 THEN
    dbms_output.put_line('I am smaller than 20');
  ELSIF v_number < 30 THEN
    dbms_output.put_line('I am smaller than 30');
  ELSE
    dbms_output.put_line('I am equal or greater than 30');
  END IF;
END;

DECLARE
  v_number NUMBER       := 5;
  v_name   VARCHAR2(30) := 'Adam';
BEGIN
  IF v_number < 10 OR v_name = 'Carol' THEN
    dbms_output.put_line('HI');
    dbms_output.put_line('I am smaller than 10');
  ELSIF v_number < 20 THEN
    dbms_output.put_line('I am smaller than 20');
  ELSIF v_number < 30 THEN
    dbms_output.put_line('I am smaller than 30');
  ELSE
 IF v_number IS NULL THEN
      dbms_output.put_line('The number is null..');
    ELSE
      dbms_output.put_line('I am equal or greater than 30');
    END IF;
  END IF;
END;

SELECT SAL FROM EMP
GROUP BY SAL
ORDER BY SAL;
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY;

 select SAL from emp
 where sal is not null
 group by sal
order by sal desc
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY;

 select SAL, rownum from emp
 where sal is not null and rownum <= 2
order by sal desc;


select dissal from emp
group by sal
order by sal desc
offset 1 row fetch next 1 rows only;

SELECT sal,r 
FROM (
    SELECT deptno, ename, sal, DENSE_RANK() OVER (ORDER BY sal DESC) AS r
    FROM emp
    WHERE sal IS NOT NULL
) subquery
WHERE r = 2;

select * from(select deptno, ename, sal, dense_rank() over(order by sal
desc)r from emp where sal is not null) where r=2;


select * from(select deptno,ename,sal, dense_rank() over(order by sal
desc) as R from emp where sal is not null) where r = 2;
-- Write a query to display 2nd highest salary employee in each department from emp table using analytical function.

select * from(select ename,deptno, sal, dense_rank() over(partition by deptno order by sal desc) as r  from emp where sal is not null) where r =2;

select * from(select deptno, ename, sal, dense_rank() over(partition by
deptno order by sal desc)r from emp  where sal is not null)where r=2;

--Write a query to display last record from emp table using rowid.

select * from emp;where rowid =(select max(rowid)from emp);
select * from emp where rowid=(select max(rowid) from emp);

select * from emp where rowid=(select max(rowid) from emp);



--Write a query to delete duplicate rows except one row in each group from a table using
--Rowid.

delete from test where rowid not in(select min(rowid) from test group by sno);


select ename,sal,deptno from emp
where INSTR(to_char(sal),to_char(deptno))>0;

select INSTR(to_char(sal),to_char(deptno)),deptno,sal from emp;

select ename,sal,deptno from emp
where INSTR(to_char(sal),to_char(deptno))>0;

select INSTR(to_char(sal),to_char(deptno)),deptno,sal from emp;


select instr('ORACLE SERVER', 'E', 1,2) from dual; 

select ename,sal,deptno from emp
where instr(to_char(sal),to_char(deptno))=1;

select INSTR('deepika', 'e',3,2) from dual;
