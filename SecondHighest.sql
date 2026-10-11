--Write an Oracle SQL query to find the second-highest distinct salary from this table.

--using offset and fetch first
select distinct(Salary) as SecondHighest 
from emp order by salary desc
offset 1 FETCH FIRST 1 ROW ONLY ;

--using subquery

SELECT MAX(SALARY) FROM EMP WHERE SAL <(SELECT MAX(SALARY) FROM EMP);